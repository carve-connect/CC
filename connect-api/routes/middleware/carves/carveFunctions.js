var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    getStuff: function (userRequest, res) {
        if (userRequest == 'patch') {
            router.patch('/:carve_attendeesId', (req, res) => {
                const carve_attendeesId = req.params.carve_attendeesId;
                const {carve, user, userType} = req.body;
                update_carve_attendees = "CALL update_carve_attendee(?,?,?,?)";
                con.query(update_carve_attendees, [carve_attendeesId, carve, user, userType[0]], (err, results) => {
                    if (err) throw err;
                    res.status(201).jsonp({results}).end();
                })
            });
        } else {
            router.put('/:carve_attendeesId', (req, res) => {
                const carve_attendeesId = req.params.carve_attendeesId;
                const {carve, user, userType} = req.body;
                update_carve_attendees = "CALL update_carve_attendee(?,?,?,?)";
                con.query(update_carve_attendees, [carve_attendeesId, carve, user, userType[0]], (err, results) => {
                    if (err) throw err;
                    res.status(201).jsonp({results}).end();
                })
            });
        }
    },


    userGet: function (userId, res) {
        console.log('We are in here!');

        get_user = "call get_user(?)";

        con.query(get_user, [userId], (err, results) => {
            if (err) throw err;
            console.log(results[0][0]);
            res.status(200).jsonp({users: results}).end;
        })
    }
};