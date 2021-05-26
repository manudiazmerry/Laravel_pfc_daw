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

/*
Route::get('/', function () {
    return view('welcome');
});
*/

Route::get('/', 'RutasController@inicio');
Route::get('/inicio', 'RutasController@inicio');
Route::get('/index', 'RutasController@inicio');


Route::get('/buscadores', 'RutasController@buscadores');
Route::get('/prensa', 'RutasController@prensa');
Route::get('/rrss', 'RutasController@rrss');
Route::get('/compras', 'RutasController@compras');
Route::get('/bancos', 'RutasController@bancos');
Route::get('/video', 'RutasController@video');

