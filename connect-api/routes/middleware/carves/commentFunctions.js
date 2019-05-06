var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    carveCommentsGet: function(carveId, res){
        comment_list = "CALL get_carve_comments(?)";
        con.query(comment_list,[carveId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveCommentsPost: function([poster,carve,media,profile,comment], res){
        new_comment = "CALL add_comment(?,?,?,?,?)";
        con.query(new_comment,[poster,carve,media,profile,comment], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveCommentsPut: function(res){
        new_comment = "CALL update_comments()";
        // Execute the query to insert into the database
        con.query(new_comment,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveCommentsPatch: function(res){
        new_comment = "CALL update_comments()";
        // Execute the query to insert into the database
        con.query(new_comment,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveCommentsDelete: function(res){
        delete_comments = "CALL delete_comments()";
        con.query(delete_comments, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveCommentGet: function(commentId, res){
        get_comment  = "call get_comment(?)";
        con.query(get_comment, [commentId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveCommentPut: function(commentId,poster,carve,media,profile,comment,res){
        update_comment = "CALL update_comment(?,?,?,?,?,?)";
        con.query(update_comment,[commentId,poster,carve,media,profile,comment],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveCommentPatch: function(commentId,poster,carve,media,profile,comment,res){
        update_comment = "CALL update_comment(?,?,?,?,?,?)";
        con.query(update_comment,[commentId,poster,carve,media,profile,comment],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveCommentDelete: function(commentId, res){
        delete_comments = "CALL delete_comment(?)";
        con.query(delete_comments, [commentId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'comment deleted'}).end();
        })
    }
};