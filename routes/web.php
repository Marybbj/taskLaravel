<?php

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

Route::get('/', function () {
    return redirect()->route('login');
});
Auth::routes();

Route::post('login', '\App\Http\Controllers\Auth\LoginController@checkIsAdmin')->name('login.post');

Route::get('/home', 'HomeController@index')->name('home');

Route::group([ 'prefix' => 'admin' ], function() {
    Route::get('dashboard', 'AdminController@dashboard')->name('admin.dashboard');
    Route::post('course', 'AdminController@getCourse');
    Route::post('group_name', 'AdminController@getGroups');
});