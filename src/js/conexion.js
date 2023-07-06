const mysql = require("mysql");

const conexion = mysql.createConnection({
    host: process.env.DB_HOST || "localhost",
    database: process.env.DB_NAME || "bdpalalu",
    user: process.env.DB_USER || "root",
    password: process.env.DB_PASSWORD || "",
    port: process.env.DB_PORT || "3306"
});

conexion.connect(function(error){
    if(error){
       throw error;
    }else{
        console.log("conexion exitosa"); 
    }
});

module.exports = conexion;
