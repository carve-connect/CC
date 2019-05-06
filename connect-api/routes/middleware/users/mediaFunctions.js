var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    usersAllMediaGet: function (userId, res){
        media_list = "CALL get_profile_media(?)";
        con.query(media_list,[userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersMediaPost: function ([poster,url,description,carve,venue,profile], res){
        new_media = "CALL add_media(?,?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_media,[poster,url,description,carve,venue,profile], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersAllMediaUpdate: function (res){
        new_media = "CALL update_media()";
        // Execute the query to insert into the database
        con.query(new_media,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersAllMediaDelete: function (res){
        delete_medias = "CALL delete_media()";
        con.query(delete_medias, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersMediaGet: function (mediaId, res){
        get_media  = "call get_medi(?)";
        con.query(get_media, [mediaId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersMediaGetUpdate: function (mediaId, [poster,url,description,carve,venue,profile], res){
        update_media = "CALL update_medi(?,?,?,?,?,?,?)";
        con.query(update_media,[mediaId,poster,url,description,carve,venue,profile],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersMediaDelete: function (mediaId, res){
        delete_medias = "CALL delete_medi(?)";
        con.query(delete_medias, [mediaId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'media deleted'}).end();
        })
    },


};