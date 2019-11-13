<?php

namespace App\Http\Controllers;

use App\Category;
use App\Group;
use App\Site;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\GroupResource;
use App\Http\Resources\SiteResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

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
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'image' => 'nullable|dimensions:max_width=2000,max_height=2000',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->messages()->first(), 422);
        }

        $category = new Category;

        $category->user_id = auth()->user()->id;
        $category->name = $request->name;
        if ($category->image) {
            $category->image = $request->file('image')->store('public/images');
        }

        $category->save();

        return response()->json($category, 200);
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'image' => 'nullable',
            'image.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->messages()->first(), 422);
        }

        $category = Category::find($id);

        $category->user_id = auth()->user()->id;
        $category->name = $request->name;

        if (is_null($request->image)) {
            $category->image = null;
        }

        if ($request->hasFile('image')) {
            $category->image = $request->file('image')->store('public/images');
        }

        $category->save();

        return response()->json($category, 200);
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
