var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    carveLikesGet: function (carveId, res){
        like_list = "CALL get_carve_likes(?)";
        con.query(like_list,[carveId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    }
};