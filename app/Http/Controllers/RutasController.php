<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Web;

class RutasController extends Controller{
    
    public function inicio(){
        $paginas=Web::where("user_id",0)->orderby('id')->get();
        $mensaje="Todos los links";
        return view('welcome',compact('paginas','mensaje'));
    }


    public function filtro($condi){
        $paginas=Web::where("categoria",$condi)->orderby('nombre')->get();
        $mensaje=$condi;
        return view('welcome',compact('paginas','mensaje'));
    }


    public function mislinks($user_id){
        $paginas=Web::where("user_id",$user_id)->orderby('nombre')->get();
        $mensaje="Links personalizados";
        return view('welcome',compact('paginas','mensaje'));
    }



}


