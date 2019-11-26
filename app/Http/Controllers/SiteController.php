<?php

namespace App\Http\Controllers;

use App\Category;
use App\Site;
use App\User;
use Illuminate\Http\Request;
use App\Http\Resources\SiteResource;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\GroupResource;
use Symfony\Component\Console\Input\Input;
use Illuminate\Support\Facades\Storage;
use phpDocumentor\Reflection\Types\Collection;

class SiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::where('user_id', auth()->user()->id)->get();


        $sitesCollection = collect();

//      merge fetched sites into one array
        foreach ($categories as $key => $category) {
            $sites = $sitesCollection->merge($category->sites);
        }

        return SiteResource::collection($sites)->sortByDesc('created_at')->values()->all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

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
