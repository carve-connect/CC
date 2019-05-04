var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    carveAllMediaGet: function (carveId, res){
        media_list = "CALL get_carve_media(?)";
        con.query(media_list,[carveId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    }
};