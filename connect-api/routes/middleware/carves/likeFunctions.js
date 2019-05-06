var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    carveLikesGet: function (carveId, res){
        like_list = "CALL get_carve_likes(?)";
        con.query(like_list,[carveId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveDislikesGet: function (carveId, res){
        like_list = "CALL get_carve_dislikes(?)";
        con.query(like_list,[carveId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end()
        })
    },

    carveLikesPost: function ([poster,carve], res){
        new_like = "CALL add_like(?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_like,[poster,'like',carve,null,null], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveDislikesPost: function ([poster,carve], res){
        new_like = "CALL add_like(?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_like,[poster,'dislike',carve,null,null], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveLikesDelete: function (carveId, res){
        delete_likes = "CALL delete_likes()";
        con.query(delete_likes, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveLikeGet: function (likeId, res){
        get_like  = "call get_like(?)";
        con.query(get_like, [likeId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveLikeDelete: function (likeId, res){
        delete_likes = "CALL delete_like(?)";
        con.query(delete_likes, [likeId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'like deleted'}).end();
        })
    }
};