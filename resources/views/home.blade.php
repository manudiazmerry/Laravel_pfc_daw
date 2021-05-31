@extends('layouts.app')

@section('content')


<head>
  <meta http-equiv="Refresh" content="3; URL=http://pfc_daw.test/mislinks/{{ Auth::user()->id }}">
</head>



<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header" style="text-align:left; color:grey;">{{ __('Mensaje') }}</div>

                <div class="card-body" style="text-align:center; color:#0b5cd6; font-size:1.7em;">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('¡ BIENVENID@ !') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


