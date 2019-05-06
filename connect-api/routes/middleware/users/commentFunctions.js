var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    usersCommentsGet: function(res){
        comment_list = "CALL get_carve_comments(?)";
        con.query(comment_list, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersCommentsPost: function([poster,carve,media,profile,comment], res){
        new_comment = "CALL add_comment(?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_comment,[poster,carve,media,profile,comment], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCommentsUpdate: function(res){
        new_comment = "CALL update_comments()";
        // Execute the query to insert into the database
        con.query(new_comment,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCommentsDelete: function(res){
        delete_comments = "CALL delete_comments()";
        con.query(delete_comments, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCommentGet: function(commentId, res){
        get_comment  = "call get_comment(?)";
        con.query(get_comment, [commentId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersCommentUpdate: function(commentId, [poster,carve,media,profile,comment], res){
        update_comment = "CALL update_comment(?,?,?,?,?,?)";
        con.query(update_comment,[commentId,poster,carve,media,profile,comment],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCommentDelete: function(commentId, res){
        delete_comments = "CALL delete_comment(?)";
        con.query(delete_comments, [commentId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'comment deleted'}).end();
        })
    },


};