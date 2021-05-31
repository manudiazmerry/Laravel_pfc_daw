
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
        <div class="card-header">Añade un link personalizado</div>

        <div class="card-body">

            <form method="GET" action="/webs/store">
            @csrf <!---- directiva crea token para evitar los errores 419 http de identificación en servidor, cosas geniales de laravel! ------->
                

                <div class="form-group row">
                    <label class="col-md-4 col-form-label text-md-right">Nombre</label>
                    <div class="col-md-6">
                        <input id="nombre" name="nombre" type="text" class="form-control" value="" required autocomplete="" autofocus>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-md-4 col-form-label text-md-right">url</label>
                    <div class="col-md-6">
                        <input id="url" name="url" type="text" class="form-control" required autocomplete="">
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

