var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    carvesGet: function(userId, res){
        carve_list = "CALL get_users_created_carves(?)";
        con.query(carve_list, [userId], (err, c) => {
            if (err) throw err;
            res.status(200).jsonp({c}).end();
        })
    },

    carvePost: function(creatorId, [carveName,venueId,carveType,athlete,photo,date, sports], res){
        new_carve = "CALL add_carve(?,?,?,?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_carve,[creatorId], [carveName,venueId,carveType[0],athlete,photo,date, sports[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carvesUpdate: function(res){
        new_carve = "CALL update_carves()";
        // Execute the query to insert into the database
        con.query(new_carve,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carvesDelete: function(res){
        delete_carves = "CALL delete_carves()";
        con.query(delete_carves, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveGet: function(carveId, res){
        get_carve  = "call get_carve(?)";
        con.query(get_carve, [carveId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveUpdate: function(carveId, [carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports], res){
        update_carve = "CALL update_carve(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        con.query(update_carve,[carveId,carveName,creatorId,venueId,carveType[0],athlete,photo,date,completed, sports[0]],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveDelete: function(carveId, res){
        delete_carves = "CALL delete_carve(?)";
        con.query(delete_carves, [carveId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'carve deleted'}).end();
        })
    },

    carveGetNames: function(res){
        get_carves_named_attendees = "CALL get_carves_named_attendees(?)";
        con.query(get_carves_named_attendees, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveGetCommentInfo: function(res){
        get_carve_comment_info = "CALL get_carve_comment_info(?)";
        con.query(get_carve_comment_info, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },
};