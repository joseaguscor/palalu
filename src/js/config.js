//configurando puerto para producción

//primero la viariable de entorno del srvidor
//si no existe entonces usamos el puerto manual 3000

const PORT = process.env.PORT || 3000;

//primero usar las variables para la base de datos desde el hosting
//luego las que agregamos de forma manual en local
/*
const DB_HOST = process.env.DB_HOST || "localhost";
const DB_USER = process.env.DB_USER || "root";
const DB_NAME = process.env.DB_NAME || "bdpalalu"
const DB_PASSWORD = process.env.DB_PASSWORD || "";
const DB_PORT = process.env.DB_PORT || "3306";
*/

module.exports = PORT;
