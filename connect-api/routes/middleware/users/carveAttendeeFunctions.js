var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    usersCarveAttendeesGet: function(userId, res){
        carve_attendees_list = "CALL get_user_attended(?)";
        con.query(carve_attendees_list, [userId], (err, attend) => {
            if (err) throw err;
            res.status(200).jsonp({attend}).end();
        })
    },

    usersCarveAttendeesPost: function ([carve, user, userType], res){
        new_carve_attendees = "CALL add_carve_attendee(?,?,?)";
        con.query(new_carve_attendees,[carve,user,userType[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarveAttendeesUpdate: function (res){
        new_carve_attendees = "CALL add_carve_attendee(?,?,?)";
        con.query(new_carve_attendees, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarveAttendeesDelete: function (res){
        delete_carve_attendeess = "CALL delete_carve_attendees()";
        con.query(delete_carve_attendeess, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarveAttendeeGet: function (carve_attendeesId, res){
        get_carve_attendees  = "call get_carve_attendee(?)";
        con.query(get_carve_attendees, carve_attendeesId, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersCarveAttendeeUpdate: function (carve_attendeesId, [carve,user,userType], res){
        update_carve_attendees = "CALL update_carve_attendee(?,?,?,?)";
        con.query(update_carve_attendees,[carve_attendeesId,carve,user,userType[0]],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersCarveAttendeeDelete: function (carve_attendeesId, res) {
        delete_carve_attendeess = "CALL delete_carve_attendee(?)";
        con.query(delete_carve_attendeess, carve_attendeesId, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg: 'carve_attendees deleted'}).end();
        })
    },

    usersCarveAttendeesGetNamed: function (carve_attendeesId, res) {
        // Find all carve_attendees from database
        get_named_carveAttendees = "CALL get_named_carveAttendees(?)";
        con.query(get_named_carveAttendees, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    }
};