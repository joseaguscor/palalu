const express = require("express");
const router = express.Router();
const conexion = require("../js/conexion");

router.get("/video", function(req,res){

    //id que viene en la url
    const id = req.query.id;
    //seleccionar información del video seleccionado
    conexion.query("SELECT * FROM tabla_videos WHERE col_id = '"+ id+"'",function(err,row){
        if(err){
            throw err;
        }else{
            //buscar publicaciones realacionadas al video
            conexion.query("SELECT * FROM tabla_publicaciones WHERE col_id IN (SELECT col_idpubli FROM union_video_publicacion WHERE col_idvideo = "+ id +")", function(error,publi){
                if(error){
                    throw error;
                }else{
                    if(publi.length>0){
                        res.render("video", {video: row[0], publicaciones: publi});
                    }else{
                        res.render("video", {video: row[0]});
                    }
                }
            })
            
            
        }
    });
    
});

module.exports = router;