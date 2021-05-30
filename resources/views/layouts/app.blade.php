
@extends("../layouts.plantilla")

@section("cabecera")
<!--ver navbar-->
@endsection



@section("contenido")
<div class="container" >

           
        <main class="formularios">
            @yield('content')
        </main>

</div>
@endsection


@section("pie")
<!--ver pie-->
@endsection