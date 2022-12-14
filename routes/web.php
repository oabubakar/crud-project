<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'DashboardController@index');
Route::resource('countries', 'CountryController');
Route::resource('offices', 'OfficeController');
Route::resource('statuses', 'StatusController');
Route::resource('readiness_types', 'ReadinessTypeController');
Route::resource('projects', 'ProjectController');
