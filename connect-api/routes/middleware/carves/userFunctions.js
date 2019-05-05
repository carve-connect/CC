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
    }
};