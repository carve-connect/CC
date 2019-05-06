var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    usersCarvesGet: function(userId, res){
        carve_list = "CALL get_users_created_carves(?)";
        con.query(carve_list, [userId], (err, c) => {
            if (err) throw err;
            res.status(200).jsonp({c}).end();
        })
    },

    usersCarvePost: function(creatorId, [carveName,venueId,carveType,athlete,photo,date, sports], res){
        new_carve = "CALL add_carve(?,?,?,?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_carve,[creatorId], [carveName,venueId,carveType[0],athlete,photo,date, sports[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarvesUpdate: function(res){
        new_carve = "CALL update_carves()";
        // Execute the query to insert into the database
        con.query(new_carve,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarvesDelete: function(res){
        delete_carves = "CALL delete_carves()";
        con.query(delete_carves, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarveGet: function(carveId, res){
        get_carve  = "call get_carve(?)";
        con.query(get_carve, [carveId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersCarveUpdate: function(carveId, [carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports], res){
        update_carve = "CALL update_carve(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        con.query(update_carve,[carveId,carveName,creatorId,venueId,carveType[0],athlete,photo,date,completed, sports[0]],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarveDelete: function(carveId, res){
        delete_carves = "CALL delete_carve(?)";
        con.query(delete_carves, [carveId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'carve deleted'}).end();
        })
    },

    usersCarveGetNames: function(res){
        get_carves_named_attendees = "CALL get_carves_named_attendees(?)";
        con.query(get_carves_named_attendees, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersCarveGetCommentInfo: function(res){
        get_carve_comment_info = "CALL get_carve_comment_info(?)";
        con.query(get_carve_comment_info, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },
};