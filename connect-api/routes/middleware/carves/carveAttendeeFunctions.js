var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    carveAttendeesGet: function(carveId, res){
        carve_attendees_list = "SELECT * from all_carve_attendees left join all_users on all_carve_attendees.user = all_users.user_id where all_carve_attendees.carve = (?)";
        con.query(carve_attendees_list, [carveId], (err, attend) => {
            if (err) throw err;
            res.status(200).jsonp({attend}).end();
        })
    },

    carveAttendeesPost: function ([carve, user, userType], res){
        new_carve_attendees = "CALL add_carve_attendee(?,?,?)";
        con.query(new_carve_attendees,[carve,user,userType[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveAttendeesPut: function (res){
        new_carve_attendees = "CALL add_carve_attendee(?,?,?)";
        con.query(new_carve_attendees, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveAttendeesPatch: function (res){
        new_carve_attendees = "CALL add_carve_attendee(?,?,?)";
        con.query(new_carve_attendees, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveAttendeesDelete: function (carveId, res){
        delete_carve_attendeess = "CALL delete_carve_attendees()";
        con.query(delete_carve_attendeess, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    carveAttendeeGet: function (carve_attendeesId, res){
        get_carve_attendees  = "call get_carve_attendee(?)";
        con.query(get_carve_attendees, carve_attendeesId, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    carveAttendeeDelete: function (carve_attendeesId, res){
        delete_carve_attendeess = "CALL delete_carve_attendee(?)";
        con.query(delete_carve_attendeess, carve_attendeesId, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'carve_attendees deleted'}).end();
        })
    }
};