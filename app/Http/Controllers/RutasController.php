<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Web;

class RutasController extends Controller{
    
    public function inicio(){
        $paginas=Web::where("user_id",null)->orderby('nombre')->get();
        return view('welcome',compact('paginas'));
    }


    public function filtro($condi){
        $paginas=Web::where("categoria",$condi)->orderby('nombre')->get();
        return view('welcome',compact('paginas'));
    }



}


