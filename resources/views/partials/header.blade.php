{{-- Seccion del header --}}
<nav class="bg-gray-100 sticky top-0 shadow-md z-50	" >
    <div class="xl:max-w-6xl mx-auto px-4">
      <div class="flex justify-between">
          <div class="flex space-x-4">

            <div>
              <a href="{{route("home")}}" class="flex items-center my-5 px-2 text-gray-700">
               <img class="w-12" src="{{ asset('img/favicoin-logo.png') }}" alt="Logo">
                <span class="font-bold mx-4">Noticias IA </span>
              </a>
            </div>

            <style>
              .active{
                color:#4F46E5;
                border-bottom: 2px solid #4F46E5;

                }
            </style>

            <!-- Barra de navegacion principal -->
            <div class="hidden md:flex items-center space-x-1 font-bold">
              <a href="{{route("noticias")}}" class="{{request()->routeIs("noticias")? "active ": ""}}my-5 px-3 text-gray-700 ">Noticias</a>
              <a href="{{route("noticias.crear")}}" class="{{request()->routeIs("noticias.crear")? "active ": ""}}my-5 px-3 text-gray-700">Crear Noticia</a>
              <a href="{{route("contacto")}}" class="{{request()->routeIs("contacto")? "active ": ""}}my-5 px-3 text-gray-700">Contacto</a>
            </div>
          </div>
        
          <!-- Log in boton -->
          <div class="hidden md:flex items-center space-x-1">
            <a href="" class="py-5 px-3">Login</a>

          </div>
        
          <!-- Menu mobil-->
          <div class="md:hidden flex items-center">
            <button class="mobile-menu-button">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
</svg>
            </button>
            
          </div>
       </div>
    </div>

    <!-- Menu movil -->
    <div class="mobile-menu hidden md:hidden">
      <a href="{{route("noticias")}}" class="block py-2 px-4 text-sm hover:bg-gray-200 text-center">Noticias</a>
      <a href="{{route("noticias.crear")}}" class="block py-2 px-4 text-sm hover:bg-gray-200 text-center">Crear Noticia</a>
      <a href="{{route("contacto")}}" class="block py-2 px-4 text-sm hover:bg-gray-200 text-center"> Contacto</a>
    </div>
</nav>
