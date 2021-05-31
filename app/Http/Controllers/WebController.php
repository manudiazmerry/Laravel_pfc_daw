<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Web;
use Illuminate\Support\Facades\Auth;



class WebController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     * 
     * {{ Auth::user()->id }}
     *  $paginas=Web::where("user_id",$user_id)->orderby('nombre')->get();
     * Web::where("user_id",$user);
     * 
     */
    public function index(){
        $usuario = Auth::user()->id;
        $webs = Web::where('id',$usuario)->get();
        return view('web.web_index')->with('webs',$webs);
    }

        /*
        $webs = Web::where('id', Auth::user()->id );
        return view('web.web_index',compact('webs'));
        */



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('web.web_create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){
        $webs = new Web();

        /* $webs->id = $request->get('id'); es automático, es autoincrement */
           $webs->nombre = $request->get('nombre'); /*viene del formulario*/
           $webs->url = $request->get('url'); /*viene del formulario*/
           $webs->categoria = 'de_usuario'; /*siempre es esta categoría*/
           $webs->user_id = Auth::user()->id; /*aquí está el lio, cada user el suyo, ahora el que esté identificado*/

        $webs->save();

        return redirect('/webs');

        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
