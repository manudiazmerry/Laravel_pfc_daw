
@extends("../layouts.plantilla")

@section("cabecera")
@endsection


@section("contenido")

<div class="container">


    <div class="row">
    @foreach($paginas as $pagina)


    <div style="width:300px; height:85px; border:1px solid blue; background:white; border-radius:15px; padding:15px 25px; margin:10px;">
        <a href='http://{{$pagina->url}}' target="_blank">
            <div>
            <IMG SRC='http://{{$pagina->url}}/favicon.ico' height="32px" style="border:1px solid blue;">
            <span style="border:1px solid blue; padding-left:21px; font-family:Passion one; font-size:24px">{{$pagina->nombre}}</span>
            </div>
       </a>
    </div>



    @endforeach
    </div>
</div>

@endsection


@section("pie")
@endsection



