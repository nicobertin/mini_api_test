<p align="center">
  <a href="htts://clyc.me">
    <img src="https://clycme-images.s3.us-east-2.amazonaws.com/clycme+logos/v1/clycme_primary.png" alt="Logo" width="300" >
  </a>
</p>

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
Carga el esquema:

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

### Hay dos nuevos requerimientos:

- Se necesita un nuevo endpoint para obtener estadísticas de la plataforma. En el landing page están esperando: 1. Mostrar el numero total de causas que hay en la plataforma. 2. El numero total de causas que han superado en donaciones al monto esperado. 3. El monto total recaudado en donaciones en la plataforma. Para cumplir con este requerimiento no hay reglas, pero si se esperan buenas practicas.

- Actualmente el Index de causas que tuviste que optimizar retorna muchas causas y se necesita ocupar de igual forma para mostrar causas destacadas en el landing. Por lo que se espera que se cree un nuevo campo propio de las causas, que permita seleccionar cuales serán las causas que aparecerán en el landing ( Utilizando el metodo Update para dejarlas en el landing o no ) y agregar el filtro necesario al Index para obtenerlas.

### Para correr las pruebas

```shell
rails t
```

## Fin
Cuando estes listo envia el link de tu repo a [mario@clyc.me](mailto:mario@clyc.me)

***

> Dado un número suficientemente elevado de ojos, todos los errores se vuelven obvios. Ley de Linus.
