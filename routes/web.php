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


Route::get('/', 'RutasController@inicio');
Route::get('/inicio', 'RutasController@inicio');
Route::get('/index', 'RutasController@inicio');

Route::get('/filtro/{condi}', 'RutasController@filtro');

Route::get('/mislinks/{user_id}', 'RutasController@mislinks');

/*----------------------------------------------------------------------*/

Route::get('/webs', 'WebController@index');
Route::get('/webs/index', 'WebController@index');

Route::get('/webs/create', 'WebController@create');
Route::get('/webs/store', 'WebController@store');
Route::get('/webs/{id}/edit', 'WebController@edit');
Route::get('/webs/{id}/update', 'WebController@update');







Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
