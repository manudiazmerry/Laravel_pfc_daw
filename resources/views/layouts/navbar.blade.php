<style>
    
    .cabecera a {
      font-family:'passion one';
      font-size:1.2em;
      text-decoration:none;
      /*border:1px solid black;*/
      margin:2px;
      border-radius:10px;
    }


    .cabecera a:hover{
      text-shadow:1px 1px 9px rgba(0, 0, 0, 0.3);
    }
    
    .link_log{
      padding:0 0 0 30px;
    }

    .nombre{
      color:#0b5cd6;
      font-family: 'Passion one';
      font-size:1.3em;
      text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
      text-align:right;
      padding:0 0 0 30px;
      background-color:#f8f9fa ;
    }

</style>



<!-------------------------------------------------------------------------------------------------------navbar------------>

<nav class="navbar navbar-expand-xl navbar-light bg-light" style="max-height: 70px;">
  <div class="container-md">
    <a class="navbar-brand" href="/"><img src="{{asset('images/logo_mano.png')}}" alt="logo" height=50px class="logo" style="padding-right:100px;"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style="background-color:#f8f9fa;text-align: right;">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <!--nav item-------------------------->
        
        
        <li class="nav-item">
          <a class="nav-link" href="/filtro/buscadores">Buscadores</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/prensa">Prensa</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/rrss">Redes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/tv" >Televisión</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/tiendas">Tiendas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/supers">Supermercados</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/bancos">Bancos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/googlehub">Google</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/filtro/otros">Otros</a>
        </li>
        

        <!--nav desplegable----------------------
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Categorías
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Mis links personales</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/index">Sitios más visitados</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/filtro/buscadores">Buscadores</a></li>
            <li><a class="dropdown-item" href="/filtro/bancos">Bancos</a></li>
            <li><a class="dropdown-item" href="/filtro/prensa">Prensa</a></li>
            <li><a class="dropdown-item" href="/filtro/video">Video</a></li>
            <li><a class="dropdown-item" href="/filtro/rrss">Redes Sociales</a></li>
            <li><a class="dropdown-item" href="/filtro/tiendas">Tiendas</a></li>
            <li><a class="dropdown-item" href="/filtro/juegos">Juegos</a></li>
          </ul>
        </li>
        -->
        
      </ul>


      @if (Route::has('login'))

      @auth

      <div  class="nombre">
      <a href="/mislinks/{{ Auth::user()->id }}" >Links de {{ Auth::user()->name }}</a>
      </div>



                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block" style="padding:0 !important;">
                    

                    <div style="text-align:right; background-color:#f8f9fa;">
                        <a href="/webs" class="link_log">Config</a><br> <!-- <i class="bi bi-gear"></i>-->

                        
                                    <a href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                    </div>       



                    @else
                        <a href="{{ route('login') }}" class="link_log">Log in</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="link_log">Register</a>
                        @endif
                    @endauth
                </div>
            @endif
      
    </div>
  </div>
</nav>

<!------------------------------------------------------------------------------------------fin navbar---------------->