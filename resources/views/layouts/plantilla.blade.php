
{{-- Plantilla principal de la pagina web --}}

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  {{-- Meta etiquetas SEO --}}
  <meta name="description" content="Blog dedicado a Noticias sobre Inteligencia Artificial">
  <meta name="keywords" content="Blog, Inteligencia Artificial, Tecnologia, Noticias, ChatGPT">
  <meta name="robots" content="index, follow">
  <title>@yield("title")</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="icon" href="{{ asset('img/favicoin-logo.png') }}" type="image/x-icon">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
  @include('partials.header')
  @yield("content")
   @include('partials.footer')
   {{-- Script para menu mobile --}}
   <script>
    const btn = document.querySelector('button.mobile-menu-button');
const menu = document.querySelector('.mobile-menu');
btn.addEventListener("click",()=>{
  menu.classList.toggle("hidden");
});
   </script>
   <style>
    .leading-5{
    }
   </style>
</body>
</html>