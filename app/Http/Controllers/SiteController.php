<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use App\Site;
use App\Http\Resources\SiteResource;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\GroupResource;
use Symfony\Component\Console\Input\Input;
use Illuminate\Support\Facades\Storage;

class SiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        GroupResource::withoutWrapping();
        $groups = Category::where('user_id', auth()->user()->id)->get();
        return GroupResource::collection($groups);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'group_id' => 'required|numeric',
            'name' => 'required|max:255',
            'url' => 'required',
            'notes' => 'nullable',
            'image' => 'nullable',
            'important' => 'boolean|nullable',
        ]);

        $validatedData['user_id'] = auth()->user()->id;
        $favicon = 'https://www.google.com/s2/favicons?domain=' . preg_replace('#^https?://#', '', rtrim($validatedData['url'],'/'));
        $validatedData['favicon'] = $favicon;

        if (is_null($validatedData['important'])) {
            $validatedData['important'] = '1';
        }

        if (!is_null($request->file('image'))) {
            $path = $request->file('image')->store('public/photos');
            $validatedData['image'] = substr($path, 13);
        }

        $site = Site::create($validatedData);
        return response()->json($site, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        SiteResource::withoutWrapping();
        $site = Site::findOrFail($id);
        if ($site->user_id !== auth()->user()->id) {
            return response()->json('Unauthorized', 401); //zmienić na json
        }
        return new SiteResource($site);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $site = Site::findOrFail($id);
        if ($site->user_id !== auth()->user()->id) {
            return response()->json('Unauthorized', 401);
        }

             $request->validate([
                'group_id' => 'required|numeric',
                'name' => 'required|max:255',
                'url' => 'required',
                'notes' => 'nullable',
                'image' => 'nullable',
                'important' => 'boolean|nullable',
        ]);

        if (isset($request->group_id)) $site->group_id = $request->group_id;
        if (isset($request->name)) $site->name = $request->name;
        if (isset($request->url)) $site->url = $request->url;
        if (isset($request->notes)) $site->notes = $request->notes;
        if (!is_null($request->file('image'))) {
            $path = $request->file('image')->store('public/photos');
            $site->image = substr($path, 13);
        }
        if (isset($request->important)) $site->important = $request->important;
        $site->save();

        return response()->json($site, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $site = Site::findOrFail($id);
        if ($site->user_id !== auth()->user()->id) {
            return response()->json('Unauthorized', 401);
        }

        $site->delete();

        return response()->json('Site has been deleted', 200);
    }
}
