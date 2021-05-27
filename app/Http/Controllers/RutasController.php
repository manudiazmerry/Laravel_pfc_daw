<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Web;

class RutasController extends Controller{
    
    public function inicio(){
        //$paginas=Web::where("categoria",$condi)->get();
        $paginas=Web::all();
        return view('welcome',compact('paginas'));
    }


    public function filtro($condi){
        $paginas=Web::where("categoria",$condi)->get();
        //$paginas=Web::all();
        return view('welcome',compact('paginas'));
    }



}


