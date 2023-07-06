@extends('layouts.plantilla')
@section("title", "Noticias IA")

@section("content")
{{-- Seccion de Noticias --}}
<section class="flex flex-col items-center justify-center max-w-[1000px] m-auto">
<ul class="grid grid-cols-1 gap-6 md:grid-cols-2 m-4">
    @foreach ($noticias->sortByDesc('created_at') as $noticia)
    <li class="flex items-center justify-center flex-col m-10 bg-[#F3F4F6] rounded-xl p-6 shadow-md hover:shadow-lg
    hover:bg-[#EFF0EF] transition duration-300 ease-in-out"> 
       <h2 class="flex flex-col items-center justify-center font-bold text-xl"><a href="{{ route('ver', $noticia)}}">
{{$noticia->name}}</a>
</h2> 
<p class="m-2 bg-[#4F46E5] px-4 text-white rounded-full"> {{$noticia->category}}</p>

         <a  class="flex flex-col items-center justify-center" href="{{ route('ver', $noticia)}}">
        <img class="object-cover rounded-xl mt-4 hover:scale-[1.01] transition duration-300 ease-in-out" src="{{$noticia->image}}" alt="{{$noticia->name}}">
      </a>
              <p class="text-gray-500 text-sm mt-2">Pulbicado el: {{$noticia->created_at->format('d-m-Y')}}</p>

      <div>
        <a href="{{ route('ver', $noticia)}}"><button class="rounded bg-blue-500 hover:bg-blue-700 py-2 px-4 text-white m-4 ">Leer noticia
</button></a>
        
      </div>
      </li>
    @endforeach
  </ul>
  {{-- Añadir paginacion --}}

    {{$noticias->links()}}
</section>
@endsection
