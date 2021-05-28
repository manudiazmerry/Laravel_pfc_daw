<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PFC DAW Manu</title>

    <!---enlazando estilos css por este orden: bootstrap online (comentado), bootstrap, bs modificado, propio--------------------------------------------------->


    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">--->
    <link href="{{asset('css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{asset('css/bootstrap_modified.css')}}" rel="stylesheet">
    <link href="{{asset('css/estilos_propios.css')}}" rel="stylesheet">

    
</head>
<body>
    
<div class="cabecera">
    @include("layouts.navbar")
    @yield("cabecera")
</div>


<div class="contenido">
    @yield("contenido")
</div>


<div class="pie">
  @include("layouts.pie")
  @yield("pie")
</div>

<!---enlazando con el js de bootstrap-------------------------->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>