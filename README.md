# prueba-blog-wiber
Este proyecto es una aplicación web desarrollada con Laravel, un framework de PHP. El proyecto implementa un blog con funcionalidades básicas como la creación, edición, visualización y eliminación de publicaciones.
Creado con PHP, Laravel, Javascript y Tailwind CSS con diseño responsive y optimizado para SEO.

#### Requisitos

Para poder levantar el proyecto necesitas tener instalado [Composer](https://getcomposer.org/), [XAMPP(PHP + MySQL)](https://www.apachefriends.org/es/index.html), [Nodejs](https://nodejs.org/) y [Git](https://git-scm.com/).

# Instrucciones de instalación
#### Clonar el repositorio

Primero, necesitarás clonar el repositorio en tu máquina local. Puedes hacerlo utilizando el siguiente comando de Git:

```git clone https://github.com/joan-tomas-1995/prueba-blog-wiber.git```
o descargar el achivo zip.


#### Instalar dependencias

Una vez que hayas clonado el repositorio, navega hasta el directorio del proyecto y ejecuta el siguiente comando para instalar todas las dependencias necesarias:


```composer install```

#### Configurar el entorno

Copia el archivo .env.example y renómbralo a .env. Luego, abre el archivo .env y configura tus variables de entorno, incluyendo tus detalles de conexión a la base de datos:


```cp .env.example .env```

DB_CONNECTION=mysql <br>
DB_HOST=127.0.0.1 <br>
DB_PORT=3306 <br>
DB_DATABASE=blog <br>
DB_USERNAME=root <br>
DB_PASSWORD= <br>

#### Importar la base de datos

Para importar la base de datos a SQL llamada blog.sql en el repositios, sigue estos pasos:

Abre phpMyAdmin y crea una nueva base de datos. <br>
Selecciona la base de datos que acabas de crear. <br>
Haz clic en la pestaña "Importar". <br>
Haz clic en el botón "Seleccionar archivo" y elige el archivo SQL del repositorio. <br>
Haz clic en el botón "Continuar" o "Go" para importar la base de datos. <br>
Recuerda actualizar tu archivo .env con el nombre de la base de datos que acabas de crear. <br>

#### Generar la clave de la aplicación



Laravel requiere una clave de aplicación para cifrar tus datos de sesión y otros datos. Puedes generar la clave de la aplicación utilizando el siguiente comando:

```php artisan key:generate```


#### Iniciar el servidor de desarrollo

```php artisan serve```

#### Captura de la Home

![img-home](https://github.com/joan-tomas-1995/prueba-blog-wiber/assets/4356870/e12714f7-f10f-4ab6-8fb7-8fb2be125119)

#### Captura de la seccion Noticias

![Noticias IA](https://github.com/joan-tomas-1995/prueba-blog-wiber/assets/4356870/8bdd2119-4d4a-4205-be2d-7759bff2df55)

#### Captura de seccion noticia unica, con editar y eliminar noticia

![noticia-unica](https://github.com/joan-tomas-1995/prueba-blog-wiber/assets/4356870/53e17cd6-3c55-4245-9738-01012021c2b0)

#### Captura de la seccion Crear Noticias

![Crear noticia](https://github.com/joan-tomas-1995/prueba-blog-wiber/assets/4356870/58766b0b-f3c2-4637-99da-50b5436e6707)


#### Futuras implementaciones que haría

-Mejorar la entrada del texarea para que la noticia tenga titulos, enlaces y un formato mejor. <br>
-Creacion de la funcionalidad del log in. <br>
-Mejora de maquetación. <br>
-Ver noticias por categorias. <br>
-Añadir buscador. <br>


