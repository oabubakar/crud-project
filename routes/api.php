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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/projects/all', 'App\Http\Controllers\ProjectController@all'); 
Route::get('/projects/kenya', 'App\Http\Controllers\ProjectController@givenCountry'); 
Route::get('/projects/status/completed', 'App\Http\Controllers\ProjectController@givenStatus'); 