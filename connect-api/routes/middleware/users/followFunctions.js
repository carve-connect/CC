var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    usersBuddyMediaGet: function (userId, res){
        follow_list = "CALL get_buddy_media(?)";
        con.query(follow_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersVenueFollowedMediaGet: function (userId, res){
        follow_list = "CALL get_venue_followed_media(?)";
        con.query(follow_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersFollowedMediaGet: function (userId, res){
        follow_list = "CALL get_followed_media(?)";
        con.query(follow_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersBuddyCarvesGet: function (userId, res){
        follow_list = "CALL get_buddy_carves(?)";
        con.query(follow_list, [userId], (err, c) => {
            if (err) throw err;
            res.status(200).jsonp({c}).end();
        })
    },

    usersVenueFollowedCarvesGet: function (userId, res){
        follow_list = "CALL get_venue_followed_carves(?)";
        con.query(follow_list, [userId], (err, c) => {
            if (err) throw err;
            res.status(200).jsonp({c}).end();
        })
    },

    usersAllFollowedCarvesGet: function (userId, res){
        follow_list = "CALL get_followed_carves(?)";
        con.query(follow_list, [userId], (err, c) => {
            if (err) throw err;
            res.status(200).jsonp({c}).end();
        })
    },

    usersFollowedGet: function (userId, res){
        follow_list = "CALL get_user_followed(?)";
        con.query(follow_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
            console.log(results);
        })
    },

    usersFollowsPost: function ([user1, user2, ven, ty], res){
        new_follow = "CALL add_follow(?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_follow,[user1, user2, ven, ty[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersFollowsUpdate: function (res){
        new_follow = "CALL update_follows()";
        // Execute the query to insert into the database
        con.query(new_follow,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersAllFollowsDelete: function (res){
        delete_follows = "CALL delete_follows()";
        con.query(delete_follows, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersBuddiesGet: function (res){
        follow_list = "CALL buddy_list(?)";
        con.query(follow_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersFollowedVenuesGet: function (userId, res){
        follow_list = "CALL get_venues_followed(?)";

        con.query(follow_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersAllFollowersGet: function (userId, res){
        follow_list = "CALL get_user_followers(?)";
        con.query(follow_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersFollowGet: function (followId, res){
        get_follow  = "call get_follow(?)";
        con.query(get_follow, [followId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersFollowUpdate: function (followId, [user1, user2, ven, ty], res){
        update_follow = "CALL update_follow(?,?,?,?,?)";
        con.query(update_follow,[followId,user1, user2, ven, ty[0]],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersVenueFollowDelete: function ([user_id1, venue_id], res){
        let sql = `DELETE FROM FOLLOWS WHERE user_id1=${user_id1} AND venue_id=${venue_id}`;
        con.query(sql, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersBuddyDelete: function ([user_id1, user_id2], res){
        let sql = `DELETE FROM FOLLOWS WHERE (user_id1=${user_id1} AND user_id2=${user_id2}) or (user_id1=${user_id2} AND user_id2=${user_id1}) AND type = 'buddy'`;
        con.query(sql, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersFollowDelete: function ([user_id1, user_id2], res){
        let sql = `DELETE FROM FOLLOWS WHERE user_id1=${user_id1} AND user_id2=${user_id2} AND type = 'follow'`;
        con.query(sql, (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersFollowIdDelete: function (followId, res){
        delete_follows = "CALL delete_follow(?)";
        con.query(delete_follows, [followId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'follow deleted'}).end();
        })
    },

    usersBuddyPost: function (userId, userId1, res){
        add_buddy = "CALL add_buddy(?,?)";
        con.query(add_buddy, [userId,userId1],(err, results, fields) => {
            if (err) throw err;
            res.status(200).json({
                userfollows: results,
                msg: 'buddy added'
            })
        })
    }

};