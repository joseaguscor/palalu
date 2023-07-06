const express = require("express");
const router = express.Router();
const conexion = require("../js/conexion");

router.get("/videos", function(req,res){
    //seleccionar todos los videos
    const listavideos = "SELECT * FROM tabla_videos ORDER BY col_fecha DESC";
    conexion.query(listavideos,function(err,row){
        if(err){
            throw err;
        }else{
            res.render("videos", {registros: row, ultimo: row[0]});
        }
    });
    
});

module.exports = router;