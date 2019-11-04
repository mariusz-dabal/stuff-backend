<?php

namespace App\Http\Controllers;

use App\Category;
use App\Group;
use App\Site;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\GroupResource;
use App\Http\Resources\SiteResource;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        CategoryResource::withoutWrapping();
        $categories = Category::where('user_id', auth()->user()->id)->get();
        return CategoryResource::collection($categories);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        CategoryResource::withoutWrapping();

        $category = Category::find($id);
        if ($category->user_id != auth()->user()->id) {
            return response()->json('Unauthorized', 401);
        }

        return new CategoryResource($category);
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function categoryGroups($id)
    {
        $category = Category::find($id);
        if ($category->user_id != auth()->user()->id) {
            return response()->json('Unauthorized', 401);
        }
        GroupResource::withoutWrapping();
        $groups = Group::where('category_id', $id)->get();

        return GroupResource::collection($groups);
    }

    public function categoryGroupsSites($category_id, $group_id)
    {
        $category = Category::find($category_id);
        if ($category->user_id != auth()->user()->id) {
            return response()->json('Unauthorized', 401);
        }

        SiteResource::withoutWrapping();
        $sites = Site::where('group_id', $group_id)->get();

        return SiteResource::collection($sites);
    }

    public function categorySites($category_id)
    {
        $category = Category::find($category_id);
        if ($category->user_id != auth()->user()->id) {
            return response()->json('Unauthorized', 401);
        }

        SiteResource::withoutWrapping();
        $sites = $category->sites;

        return SiteResource::collection($sites);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
