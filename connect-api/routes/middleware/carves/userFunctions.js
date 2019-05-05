var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    carveUsersGet: function(carveId, res){
        carve_list = "CALL get_users_carves_attendee(?)";
        con.query(carve_list,[carveId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveUserPost: function([username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports], res){
        new_user = "CALL add_user(?,?,?,?,?,?,?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_user,[username, email, password, first_name, last_name, description, type[0], snow_sports[0], water_sports[0], land_sports[0], air_sports[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveUsersUpdate: function(res){
        new_user = "CALL update_users()";
        // Execute the query to insert into the database
        con.query(new_user,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveUsersDelete: function(res){
        delete_users = "CALL delete_users()";
        con.query(delete_users, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveUserGet: function(userId, res){
        get_user  = "call get_user(?)";
        con.query(get_user, [userId],(err, results) => {
            if (err) throw err;
            console.log(results[0][0]);
            res.status(200).jsonp({results}).end();
        })
    },

    carveUserUpdate: function(userId, [username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports], res){
        update_user = "CALL update_user(?,?,?,?,?,?,?,?,?,?,?,?)";
        con.query(update_user,[userId,username, email, password, first_name, last_name, description, type[0], snow_sports[0], water_sports[0], land_sports[0], air_sports[0]],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveUserDelete: function(userId, res){
        delete_users = "CALL delete_user(?)";
        con.query(delete_users, [userId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'user deleted'}).end();
        })
    },

};