<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RutasController extends Controller{
    
    public function inicio(){
        $paginas=['Marca','Google','Gmail','Pagina1','Pagina2','Pagina3','Pagina4','Pagina5','Pagina5','Pagina5','Pagina5','Pagina5','Pagina5','Pagina5'];
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


