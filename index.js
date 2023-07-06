const express = require("express");
const mysql = require("mysql");

//importar el puerto
const PORT = require("./src/js/config");


const app = express();

//modulos creados, importando archivos de carpeta src
const conexion =require("./src/js/conexion");


/*************************************************************************
configuraciones
***************************************************************/

//Motor de vistas
app.set("view engine", "ejs");


/*******************************************************************
middlewares
*******************************************************************/
app.use(express.json()); //para archivos u objetos json
app.use(express.urlencoded({extended:false})); //Para datos que vienen de las páginas
app.use(express.static("public"));//Ruta para archivos estáticos


/***********************************************************
 * Rutas de solo mostrar, otras estan en la carpeta crc
 */

//ruta inicial
app.get("/", function(req,res){ 
    res.render("index")
})
//ruta del video seleccionado
app.use(require("./src/rutas/video"));

//importar ruta de página todos los videos
app.use(require("./src/rutas/videos"));




/**********************************************************
 * Puerto para el servidor
 *****************************************************/
app.listen(PORT,function(){
    console.log(PORT);
});