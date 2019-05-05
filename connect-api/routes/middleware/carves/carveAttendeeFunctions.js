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
    }
};