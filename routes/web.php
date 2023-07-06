<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\NoticiasController;
use App\Http\Controllers\ContactoController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
// Ruta para la página de inicio

Route::get('/', [HomeController::class, 'home'])->name('home');

// Rutas relacionadas con las noticias

Route::get('/noticias', [NoticiasController::class, 'noticias'])->name('noticias');
Route::get('/noticias/crear', [NoticiasController::class, 'crear'])->name('noticias.crear');
Route::get('/noticias/{noticia}/editar', [NoticiasController::class, 'editar'])->name('editar');
Route::put('/noticias/{noticia}', [NoticiasController::class, "update"])->name('noticias.update');
Route::post('/noticias', [NoticiasController::class, 'store'])->name('noticias.store');
Route::get('/noticias/{noticia}', [NoticiasController::class, 'ver'])->name('ver');
Route::delete('/noticias/{noticia}', [NoticiasController::class, 'destroy'])->name("destroy");

// Ruta para la página de contacto

Route::get('/contacto', [ContactoController::class, 'contacto'])->name('contacto');
