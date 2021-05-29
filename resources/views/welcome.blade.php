
@extends("../layouts.plantilla")

@section("cabecera")
<!--ver navbar-->
@endsection


@section("contenido")

<div class="container">


    <div class="row">
    @foreach($paginas as $pagina)


    <div class="pastilla" >
        <a href='http://{{$pagina->url}}' target="_blank">
            <div style="display:flex; align-items:center;">
                <span><IMG SRC='http://{{$pagina->url}}/favicon.ico' height="24px"></span>
                <span style="padding-left:21px; font-family:Passion one; font-size:28px;">{{$pagina->nombre}}</span>
            </div>
       </a>
    </div>

    

    @endforeach
    </div>
</div>

@endsection


@section("pie")
<!--ver pie-->
@endsection


<!--
display: flex;
  justify-content: center;
  align-items: center;

-->