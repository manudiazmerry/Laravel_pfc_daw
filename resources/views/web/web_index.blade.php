
@extends("../layouts.plantilla")

@section("cabecera")
<!--ver navbar-->
@endsection


@section("contenido")

<div class="container">

    <!--------------------------------- mensaje---------->
    <p class="txt_ruta">Personaliza tus links</p>


    <!---------------------------------tabla ---------->

    <table class="table table-light table-striped table-hover table-bordered table-sm  align-middle mt-4" style="color:grey; max-width:70%; margin:0 auto;">

        <thead style="text-align:center; font-family:'Passion one'; font-size:1.2em; color:#1852a8;">
            <tr>
                <!--<th scope="col">id</th>-->
                <th scope="col">NOMBRE</th>
                <th scope="col">URL</th>
                <!--<th scope="col">categoria</th>-->
                <!--<th scope="col">user_id</th>-->
                <th scope="col"><a href="/webs/create" class="btn btn-outline-success" style="width:100px">Añadir link</a></th>
            </tr>
        </thead>

        <tbody>
            @foreach ($webs as $web)
            <tr>
                <!--<th scope="col">{{ $web->id }}</th>-->
                <th scope="col">{{ $web->nombre }}</th>
                <th scope="col">{{ $web->url }}</th>
                <!--<th scope="col">{{ $web->categoria }}</th>-->
                <!--<th scope="col">{{ $web->user_id }}</th>-->
                <th scope="col" style="text-align:center;">
                    <form action="webs/destroy/{{ $web->id }}" method="get">
                    <a href="webs/{{ $web->id }}/edit" class="btn btn-outline-primary btn-sm">Editar</a>
                    @csrf
                    <!--@method('DELETE')-->
                    <button type="submit" class="btn btn-outline-danger btn-sm">Borrar</button>    
                    </form>
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

