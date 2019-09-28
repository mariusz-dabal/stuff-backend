<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Site;
use App\Http\Resources\SiteResource;
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
        SiteResource::withoutWrapping();
        $sites = Site::where('user_id', auth()->user()->id)->get();
        return SiteResource::collection($sites);
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
            'parent_id' => 'nullable|numeric',
            'category_id' => 'required|numeric',
            'name' => 'required|max:255',
            'url' => 'required',
            'notes' => 'nullable',
            'thumbnail' => 'nullable',
            'size_id' => 'nullable|numeric',
            'status_id' => 'nullable|numeric',
        ]);

        $validatedData['user_id'] = auth()->user()->id;

        if (is_null($validatedData['size_id'])) {
            $validatedData['size_id'] = '2';
        }

        if (is_null($validatedData['status_id'])) {
            $validatedData['status_id'] = '1';
        }

        if (!is_null($request->file('thumbnail'))) {
            $path = $request->file('thumbnail')->store('public/photos');
            $validatedData['thumbnail'] = substr($path, 13);
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
            return response('Unauthorized', 401);
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
            return response('Unauthorized', 401);
        }

             $request->validate([
            'parent_id' => 'nullable|numeric',
            'category_id' => 'required|numeric',
            'name' => 'required|max:255',
            'url' => 'required',
            'notes' => 'nullable',
            'thumbnail' => 'nullable',
            'size_id' => 'nullable|numeric',
            'status_id' => 'nullable|numeric',
        ]);

        if (isset($request->parent_id)) $site->parent_id = $request->parent_id;
        if (isset($request->category_id)) $site->category_id = $request->category_id;
        if (isset($request->name)) $site->name = $request->name;
        if (isset($request->url)) $site->url = $request->url;
        if (isset($request->notes)) $site->notes = $request->notes;
        if (!is_null($request->file('thumbnail'))) {
            $path = $request->file('thumbnail')->store('public/photos');
            $site->thumbnail = substr($path, 13);
        }
        if (isset($request->size_id)) $site->size_id = $request->size_id;
        if (isset($request->status_id)) $site->status_id = $request->status_id;
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
            return response('Unauthorized', 401);
        }
     
        $site->delete();

        return response()->json($site, 200);
    }
}
