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



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
