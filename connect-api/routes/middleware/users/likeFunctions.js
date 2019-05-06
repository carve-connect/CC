var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    usersLikesGet: function (res){
        like_list = "CALL get_likes()";
        con.query(like_list, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersLikesPost: function ([poster,likeordislike,carve,media,comment], res){
        new_like = "CALL add_like(?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_like,[poster,likeordislike[0],carve,media,comment], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersLikesUpdate: function (res){
        new_like = "CALL update_likes()";
        // Execute the query to insert into the database
        con.query(new_like,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersLikesDelete: function (res){
        delete_likes = "CALL delete_likes()";
        con.query(delete_likes, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersLikeGet: function (likeId, res){
        get_like  = "call get_like(?)";
        con.query(get_like, [likeId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersLikeUpdate: function (likeId, [poster,likeordislike,carve,media,comment], res){
        update_like = "CALL update_like(?,?,?,?,?,?)";
        con.query(update_like,[likeId,poster,likeordislike[0],carve,media,comment],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersLikeDelete: function (likeId, res){
        delete_likes = "CALL delete_like(?)";
        con.query(delete_likes, [likeId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'like deleted'}).end();
        })
    },


};