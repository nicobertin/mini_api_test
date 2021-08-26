# MINI API REST

Prueba de conocimientos sobre RoR.
**Todas las instrucciones están en este README**

## Requerimientos

- Ruby 3.0.0
- Sqlite3

## Instalación
Este es el primer desafío.

### Clona el repositorio

Para llevar a cabo la prueba te recomendamos crear un fork de este proyecto. Por lo que el siguiente comando deberías correrlo utilizando tu repositorio.

```shell
git clone https://gitlab.com/clyc-pruebas/mini_api_test.git
cd mini_api_test
```

### Instalar dependencias

Usando [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```

### Inicia la base de datos
Crea la base de datos:

```shell
rails db:create
```
Corre las migraciones:

```shell
rails db:schema:load
```
Y finalmente para que tengas datos de prueba fake corre:

```shell
rails db:seed
```

## Servir

```shell
rails s
```

## To Do
La aplicación esta incompleta. Se comenzó a desarrollar siguiendo la metodología de "Test-driven development" así que las pruebas están disponibles pero no así las implementaciones. Entonces los objetivos son:

- Completar la implementación de los metodos que faltan en los controladores siguiendo los comentarios que hay en cada uno de estos. (Index, Show y Update para causes; Index, Create y Destroy para donations)

- Se cree que el Index de causas esta generando muchas consultas a la bbdd por lo que se pide optimizarlo (Ayuda: El proyecto incluye la gema "Bullet").

- Hay un nuevo requerimiento. Se necesita un nuevo endpoint para obtener estadísticas de la plataforma. En el landing page están esperando mostrar el numero total de causas que hay en la plataforma, el numero total de causas que han superado en donaciones al monto esperado y el monto total recaudado en donaciones en la plataforma. Para cumplir con este requerimiento no hay reglas, pero si se esperan buenas practicas.


### Problemas
Si encuentras un error en el codigo o algo te parece que esta mal reportalo.
