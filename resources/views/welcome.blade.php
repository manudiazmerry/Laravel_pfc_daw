
@extends("../layouts.plantilla")

@section("cabecera")
@endsection


@section("contenido")

<div class="container">
    <div class="row">
    @foreach($paginas as $pagina)
        <a href='http://{{$pagina->url}}' target="_blank">
            <div class="col">{{$pagina->nombre}}</div>
       </a>
    @endforeach
    </div>
</div>

@endsection


@section("pie")
@endsection
