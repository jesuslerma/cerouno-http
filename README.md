# Semana 6: HTTP

## Practica 1

Ejecuta el siguiente código en la terminal:
```bash
git clone https://github.com/jesuslerma/cerouno-http.git
cd cerouno-http/server
gem install sinatra
ruby server.rb
```
### Preguntas importantes
* ¿Qué es cliente/servidor?
* ¿Cómo funciona http?
* ¿Cuál es la diferencia entre código del cliente y código del servidor?
* ¿Qué es curl?

### Ejercicios

* Muestra la página html que hiciste la semana pasada. 20 minutos.
* Recrear programa. 40 minutos.

### Preguntas importantes
* ¿Cuáles son los tipos de Mime types que existen y por qué son importantes?

### Ejercicios
* Crea una función que reciba como parametro el *path* de un archivo y regrese su contenido en string. Usa esta función
en donde creas pertinente.

## Practica 2
Ejecuta el siguiente código en la terminal desde el directorio del proyecto

```bash
ruby server-songs.rb
```
### Preguntas importantes
* ¿Cuál es la diferencia entre sitios web estáticos y dinámicos?
* ¿Qué es un URI?
* ¿Cuál es la mejor forma de nombrar un recurso http?

### Ejercicios
* Muestra la página html que hiciste la semana pasada. 20 minutos.
* Recrear programa. 
* Crea una función que reciba como parametro una URL, obtenga el nombre del archivo de una URL similar a `/songs/song_name`
song_name deberá de ser un archivo dentro del directorio songs. Este archivo debe de ser mostrado en html.

* Mostrar song en texto plano.
* Mostrar song en mp3
* Mostrar song en mp4

** Los archivos mp3 y/o mp4 puede ser cualquiera, no tiene que estar vinculado a la canción.

## Practica 3
Ejecuta el siguiente código en la terminal desde el directorio del proyecto

```bash
ruby http-methods.rb &
curl 
```
### Preguntas importantes
* ¿Cuáles son los diferentes méthodos HTTP existentes?
* ¿Para qué funciona POST?
* ¿Para que funciona DELETE?
* ¿Cuál verbo debo de usar para actualizar un archivo?

## Practica 4
Ejecuta el siguiente código en la terminal desde el directorio del proyecto
```bash 
ruby http-form.rb &
```
Ve al navegador y llena el formulario.

## Ejercicios
* Agrega a tu pagina de CV un formulario para enviar un CV

# Practica Final (en grupo)
Crear una aplicación para agregar, eliminar, y mostrar una lista de canciones en formato html.

# Práctica día sábado
Crear una aplicación para guardar PDF. Buscar Pdfs por author o isbn. Mostrar PDFs en el navegador. Eliminar PDFs y
por ultimo subir PDFs.
