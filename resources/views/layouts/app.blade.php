
@extends("../layouts.plantilla")

@section("cabecera")
<!--ver navbar-->
@endsection



@section("contenido")
<div class="container" >

                    
        <!-- Authentication Links -->
        
            
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
            @csrf
        </form>
                
       
           
        <main class="py-4">
            @yield('content')
        </main>

</div>
@endsection


@section("pie")
<!--ver pie-->
@endsection