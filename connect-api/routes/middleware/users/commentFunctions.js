var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    userCommentsGet: function(res){comment_list = "CALL get_carve_comments(?)";

        con.query(comment_list, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    }
};