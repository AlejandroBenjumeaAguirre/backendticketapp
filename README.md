# backendticketapp
Backend de aplicación de tickets con nodejs, express, sequelize y typescript

# Ejecutar

npm install

# Crear archivo .env

Se debe de crear el archivo .env con las variables de entorno para la conexion a la base de datos, de lo contrario no podran realziar las peticiones ya que no tendran conexion a la base de datos.

Variables necesarias: 
HOST = Dirección donde se ejecuta la base de datos, 
DB = nombre de la base de datos, 
PASSWORDDB = contraseña de la base de datos.

# Ejecutar para Crear la carpeta dist.

tsc --watch

# Ejecutar para ponerlo a correr en modo desarrollo

npm run dev

# Ejecutar para ponerlo a correr en modo producción

npm start

