# prueba-blog-wiber
CRUD de blog sobre noticias IA para prueba tecnica Wiber.

# Instrucciones de instalación
#### Clonar el repositorio

Primero, necesitarás clonar el repositorio en tu máquina local. Puedes hacerlo utilizando el siguiente comando de Git:

git clone https://github.com/joan-tomas-1995/prueba-blog-wiber.git
o descargar el achivo zip.


#### Instalar dependencias

Una vez que hayas clonado el repositorio, navega hasta el directorio del proyecto y ejecuta el siguiente comando para instalar todas las dependencias necesarias:


composer install

#### Configurar el entorno

Copia el archivo .env.example y renómbralo a .env. Luego, abre el archivo .env y configura tus variables de entorno, incluyendo tus detalles de conexión a la base de datos:


cp .env.example .env

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=blog
DB_USERNAME=root
DB_PASSWORD=

#### Importar la base de datos

Para importar la base de datos a SQL llamada blog.sql en el repositios, sigue estos pasos:

Abre phpMyAdmin y crea una nueva base de datos.
Selecciona la base de datos que acabas de crear.
Haz clic en la pestaña "Importar".
Haz clic en el botón "Seleccionar archivo" y elige el archivo SQL del repositorio.
Haz clic en el botón "Continuar" o "Go" para importar la base de datos.
Recuerda actualizar tu archivo .env con el nombre de la base de datos que acabas de crear.

#### Ejecutar las migraciones
php artisan migrate

#### Iniciar el servidor de desarrollo

php artisan serve
