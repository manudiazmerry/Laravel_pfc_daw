
@extends("../layouts.plantilla")

@section("cabecera")
@endsection


@section("contenido")


<div class="container">
    <div class="row">

    @foreach($paginas as $pagina)
        <div class="col">{{$pagina}}</div>
    @endforeach

    </div>






</div>

@endsection


@section("pie")
@endsection
