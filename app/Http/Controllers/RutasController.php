<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Web;

class RutasController extends Controller{
    
    public function inicio(){
        $paginas=Web::all();
        return view('welcome',compact('paginas'));
    }

    public function buscadores(){
        return view('buscadores');
    }

    public function prensa(){
        return view('prensa');
    }

    public function rrss(){
        return view('rrss');
    }

    public function compras(){
        return view('compras');
    }

    public function bancos(){
        return view('bancos');
    }

    public function video(){
        return view('video');
    }





}


