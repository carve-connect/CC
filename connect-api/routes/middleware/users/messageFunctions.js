var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../../db');

module.exports = {
    usersMessagesGet: function (userId, res){
        message_list = "CALL get_users_inbox(?)";
        con.query(message_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersSentGet: function (userId, res){
        message_list = "CALL get_users_sent(?)";
        con.query(message_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersNotificationsGet: function (userId, res){
        message_list = "CALL get_user_notifications(?)";
        con.query(message_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersSentNotificaionsGet: function (userId, res){
        message_list = "CALL get_user_sent_notifications(?)";
        con.query(message_list, [userId], (err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersMessagePost: function ([sender,reciever,subject,body, msgType], res){
        new_message = "CALL add_message(?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_message,[sender,reciever,subject,body, msgType[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersMessagesUpdate: function (res){
        new_message = "CALL update_messages()";
        // Execute the query to insert into the database
        con.query(new_message,(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersMessagesDelete: function (res){
        delete_messages = "CALL delete_messages()";
        con.query(delete_messages, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersMessageGet: function (messageId, res){
        get_message  = "call get_message(?)";
        con.query(get_message, [messageId],(err, results) => {
            if (err) throw err;
            res.status(200).jsonp({results}).end();
        })
    },

    usersMessageUpdate: function (messageId, [sender,reciever,subject,body, msgType], res){
        update_message = "CALL update_message(?,?,?,?,?,?)";
        con.query(update_message,[messageId,sender,reciever,subject,body, msgType[0]],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    },

    usersMessageDelete: function (messageId, res){
        delete_messages = "CALL delete_message(?)";
        con.query(delete_messages, [messageId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'message deleted'}).end();
        })
    }
};