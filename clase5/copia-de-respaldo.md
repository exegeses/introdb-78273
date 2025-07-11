# copia de respaldo

> cuando queremos hacer una copia de respaldo o backupn de nuestra base de datos
> tenemos tres tipos

1. estructura y datos
2. sólo estructura
3. sólo datos

1. estructura y datos
En este caso vamos a tener un script de SQL que genere
todos los **CREATE TABLE**
y todos los **INSERT INTO tabla**

2. sólo estructura
   En este caso vamos a tener un script de SQL que genere
   todos los **CREATE TABLE** (sin datos)

3. sólo datos
   En este caso vamos a tener un script de SQL que genere
   todos los **INSERT INTO tabla** (sin creación de tablas)


## pasos: 
En la barra de menús ir a **SERVER**
Seleccionar **DATA EXPORT**
> nos va aparecer del lado izquierdo cada una de nuestras bases de datos
Seleccionamos la base de datos a respaldar
> nos va aparecer del lado derecho cada una de las tablas de esa base de datos
> en el desplegable elegimos el tipo de backup
> dónde dice export Options vamos a elegir que lo haga en un archivo separado "Self-contained file"
> pulsamos el botón que dice **Start Export**