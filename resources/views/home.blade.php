@extends('layouts.plantilla')
@section("title", "Inicio")

@section("content")
<section>
  {{-- Seccion de la Home --}}
  <div class="px-6 py-12 text-center md:px-12 lg:text-left">
    <div class="w-100 mx-auto sm:max-w-2xl md:max-w-3xl lg:max-w-5xl xl:max-w-7xl xl:px-32">
      <div class="grid items-center lg:grid-cols-2">
        <div class="mb-12 md:mt-12 lg:mt-0 lg:mb-0">
          <div
            class="img-bg flex flex-col justify-center items-center rounded-lg bg-[#F3F4F6] px-6 py-12 shadow-[0_2px_15px_-3px_rgba(0,0,0,0.27),0_10px_20px_-2px_rgba(0,0,0,0.4)] dark:bg-[#E4E5E6] dark:shadow-black/20 md:px-12 lg:-mr-14 backdrop-blur-[30px]">
            <h1 class="mt-2 mb-16 text-white text-4xl font-bold tracking-tight md:text-5xl xl:text-6xl">
              Las mejores noticias sobre  <br /><span class="text-[#4F46E5]">IA</span>
            </h1>
            <div class="flex flex-row justify-center items-center">
            <a class="inline-block rounded bg-primary px-12 pt-4 pb-3.5 text-sm font-medium uppercase leading-normal text-whiterounded transition duration-300 ease-in-out bg-blue-500 hover:bg-blue-700 py-2 px-4 text-white m-4" href="{{route("noticias")}}" role="button">Ver Noticias</a>
            <a class="inline-block rounded px-12 pt-4 pb-3.5 text-sm font-medium uppercase leading-normal text-primary transition duration-300 ease-in-out rounded bg-blue-500 hover:bg-blue-700 py-2 px-4 text-white m-4"
             href="{{route("contacto")}}" role="button">Contacto</a>
            </div>
          </div>
        </div>
        <div class="md:mb-12 lg:mb-0">
          <img src="{{ asset('img/ai-technology.jpg') }}"
            class="w-full rounded-lg shadow-lg dark:shadow-black/20" alt="" />
        </div>
      </div>
    </div>
  </div>
  <div>
    {{-- Añadir Background image y ::before para oscurecer la imagen --}}
    <style>
      .img-bg{
        background-image: url("img/ai-hands.jpg");
        background-repeat: no-repeat;
        background-size: cover;
      }
      .img-bg::before {
        z-index: -2;
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 8px;
  background-color: rgba(0, 0, 0, 0.5); 
}
    </style>

  </div>
</section>

@endsection

