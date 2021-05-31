
@extends("../layouts.plantilla")

@section("cabecera")
<!--ver navbar-->
@endsection


@section("contenido")

<div class="container">

    <!--------------------------------- mensaje---------->
    <p class="txt_ruta">Personaliza tus links</p>

    <!---------------------------------botón crear---------->

    <a href="/webs/create" class="btn btn-primary">Añadir link</a>

    <!---------------------------------tabla ---------->

    <table class="table table-light table-striped table-hover table-bordered table-sm  align-middle mt-4" style="color:grey;">

        <thead style="text-align:center; font-family:'Passion one'; font-size:1.2em; color:#1852a8;">
            <tr>
                <th scope="col">id</th>
                <th scope="col">NOMBRE</th>
                <th scope="col">URL</th>
                <th scope="col">categoria</th>
                <th scope="col">user_id</th>
                <th scope="col">Acciones</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($webs as $web)
            <tr>
                <th scope="col">{{ $web->id }}</th>
                <th scope="col">{{ $web->nombre }}</th>
                <th scope="col">{{ $web->url }}</th>
                <th scope="col">{{ $web->categoria }}</th>
                <th scope="col">{{ $web->user_id }}</th>
                <th scope="col" style="text-align:center;">
                    <a href="webs/edit" class="btn btn-info btn-sm">Editar</a>
                    <a href="webs/destroy" class="btn btn-danger btn-sm">Borrar</a>                
                </th>
            </tr>
            @endforeach
        </tbody>

    </table>





    </div>
</div>

@endsection


@section("pie")
<!--ver pie-->
@endsection

