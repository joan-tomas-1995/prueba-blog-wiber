@extends('layouts.plantilla')
@section("title", "$noticia->name")

@section("content")
<section>
{{-- Seccion para ver una la noticia seleccionada --}}

  <div class="flex flex-col items-center justify-center max-w-xl m-auto">
<h1 class="text-4xl pt-8">{{$noticia->name}}</h1>
<p class="m-2 bg-[#4F46E5] px-4 text-white rounded-full"> {{$noticia->category}}</p>
<img class="object-contain w-[80%] max-w-lg	rounded-xl m-4" src="{{$noticia->image}}" alt="{{$noticia->name}}">
<p class="text-gray-500 text-sm mt-2">Pulbicado el: {{$noticia->created_at->format('d-m-Y')}}</p>
<div class="flex flex-row ">
<a href="{{ route('editar', $noticia)}}"><button class="rounded bg-yellow-500 hover:bg-yellow-700 py-2 px-4 text-white m-4">Editar noticia
</button></a>
<form action="{{ route('destroy', $noticia)}}" method="POST">
@csrf
@method("delete")
<button type="submit" class="rounded bg-red-500 hover:bg-red-700 py-2 px-4 text-white m-4">Eliminar noticia
</button>
</form>
</div>
<p class="m-2">{{$noticia->description}}</p>
</div>
</section>
@endsection