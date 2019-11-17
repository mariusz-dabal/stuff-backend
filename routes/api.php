<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/login', 'AuthController@login');
Route::post('/register', 'AuthController@register');
Route::resource('/users', 'UsersController');

Route::middleware('auth:api')->group(function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::post('/logout', 'AuthController@logout');

    // Categories
    Route::resource('categories', 'CategoriesController');

    // Category Groups
    Route::get('categories/{category}/groups', 'CategoriesController@categoryGroups');
    Route::post('categories/{category}/groups', 'CategoriesController@storeCategoryGroups');
    Route::put('categories/{category}/groups/{group}', 'CategoriesController@updateCategoryGroups');
    Route::delete('categories/{category}/groups/{group}', 'CategoriesController@destroyCategoryGroups');

    // Category Groups Sites
    Route::get('categories/{category}/groups/{group}/sites', 'CategoriesController@categoryGroupsSites');
    Route::post('categories/{category}/groups/{group}/sites', 'CategoriesController@storeCategoryGroupsSites');
    Route::put('categories/{category}/groups/{group}/sites/{site}', 'CategoriesController@updateCategoryGroupsSites');
    Route::delete('categories/{category}/groups/{group}/sites/{site}', 'CategoriesController@destroyCategoryGroupsSites');

    // Category Sites
    Route::get('categories/{category}/sites', 'CategoriesController@categorySites');

    // Groups
    Route::resource('groups', 'GroupsController');

    // Sites
    Route::resource('sites', 'SiteController');

});




