@extends('layouts.plantilla')
@section("title", "Crear noticia")

@section("content")

{{-- Seccion para editar una noticia --}}
<section class="flex flex-col items-center justify-center">

  <h1 class="flex flex-col items-center justify-center font-bold text-xl m-4">  Aqui puedes editar la noticia:
</h1>

  <form action="{{route("noticias.update", $noticia)}}" method="POST" class="flex flex-col gap-2 w-96 text-center justify-center">

  @csrf 
    @method("put")

  <label class="flex flex-col m-4 uppercase text-gray-700 font-bold mb-2">Nombre:</label>
    <input type="text" name="name" class="border-2 rounded" value="{{old("name", $noticia->name)}}">
  
  @error('name')
      <small class="bg-red-500 p-2 text-white rounded m-4">{{$message}}</small>
  @enderror
   <label class="flex flex-col m-4 uppercase text-gray-700 font-bold mb-2">Descripción:</label>
    <textarea name="description"rows="5" class="border-2 rounded">{{old("description",  $noticia->description)}}</textarea>
  
  @error('description')
      <small class="bg-red-500 p-2 text-white rounded m-4">{{$message}}</small>
  @enderror
   <label class="flex flex-col m-4 uppercase text-gray-700 font-bold mb-2">Categoria:
    </label>
    <input type="text" name="category" class="border-2 rounded" value="{{old("category", $noticia->category)}}">
  
  @error('category')
      <small class="bg-red-500 p-2 text-white rounded m-4">{{$message}}</small>
  @enderror
   <label class="flex flex-col m-4 uppercase text-gray-700 font-bold mb-2">URL de imagen:</label>
    <input type="text" class="border-2 rounded" value="{{old("image", $noticia->image)}}" name="image">
   
  @error('image')
      <small class="bg-red-500 p-2 text-white rounded m-4">{{$message}}</small>
  @enderror
  <button type="submit" class="rounded bg-yellow-500 hover:bg-yellow-700 py-2 px-4 text-white m-4">
    Editar noticia
  </button>
</form>
</div>
</section>
@endsection

