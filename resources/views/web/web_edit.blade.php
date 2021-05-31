
@extends("../layouts.plantilla")

@section("cabecera")
<!--ver navbar-->
@endsection


@section("contenido")

<div class="container">
    <!--------------------------------- mensaje---------->
    <p class="txt_ruta">Añadir</p>



    <!--------------------------------- form---------->

    <div class="card">
        <div class="card-header">Edita tu link</div>

        <div class="card-body">

            <form method="GET" action="/webs/{{$web->id}}/update">
            @csrf <!---- directiva crea token para evitar los errores 419 http de identificación en servidor, cosas geniales de laravel! ------->
            <!--- @method('PUT') sería método adecuado para editar mediante forms---------->

                <div class="form-group row">
                    <label class="col-md-4 col-form-label text-md-right">Nombre</label>
                    <div class="col-md-6">
                        <input id="nombre" name="nombre" type="text" class="form-control" required  maxlength="17" autofocus value="{{$web->nombre}}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-4 col-form-label text-md-right">url</label>
                    <div class="col-md-6">
                        <input id="url" name="url" type="text" class="form-control" required value="{{$web->url}}">
                    </div>
                </div>
             
                <div class="form-group row mb-0">
                    <div class="col-md-8 offset-md-4">
                        <button type="submit" class="btn btn-primary">Enviar</button>
                        <a href="/webs" class="btn btn-danger">Cancelar</a>
                    </div>
                </div>

            </form>
        </div>
    </div>

    

</div>

@endsection


@section("pie")
<!--ver pie-->
@endsection

