<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreNoticia;
use App\Models\Noticia;

class NoticiasController extends Controller
{
    // Mostrar todas las noticias paginadas
    public function noticias()
    {
        // Obtener noticias paginadas con 4 elementos por página
        $noticias =
            Noticia::orderBy('created_at', 'desc')->paginate(4);
        return view('noticias', ['noticias' => $noticias]);
    }

    // Ver una noticia específica
    public function ver(Noticia $noticia)
    {
        return view('ver', compact('noticia'));
    }

    // Mostrar formulario de creación de noticias
    public function crear()
    {
        return view('crear');
    }

    // Mostrar formulario de edición de noticias
    public function editar(Noticia $noticia)
    {
        return view('editar', compact('noticia'));
    }

    // Actualizar una noticia existente
    public function update(StoreNoticia $request, Noticia $noticia)
    {
        // Validar los datos de la solicitud
        $request->validate(
            [
                "name" => "required",
                "description" => "required",
                "category" => "required",
                "image" => "required",
            ]
        );
        // Actualizar los datos de la noticia con los datos de la solicitud
        $noticia->update($request->all());
        return redirect()->route("ver", $noticia);
    }

    // Almacenar una nueva noticia
    public function store(StoreNoticia $request)
    {
        $noticia = Noticia::create($request->all());
        return redirect()->route("noticias");
    }
    // Eliminar una noticia

    public function destroy(Noticia $noticia)
    {
        $noticia->delete();
        return redirect()->route("noticias");
    }
}
