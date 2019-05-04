var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');



// Grabs all messages for a specific user from the db
router.get('/', (req,res) => {
    userId = req.params.userId;

});

// Strips json obj given back by the db and returns only the rows so that we can manipulate the data
// @params results --- The results from the db to be stripped
function stripResults(results) {
    // let res = JSON.parse(JSON.stringify(results))[0];
    let res = JSON.parse(JSON.stringify(results));
    // console.log(res);
    return res;
}

// global variables
let obj = {};
let messageObj = {};

// Returns id of the reply message if available, if not it will return null
function hasReplyInObj(id) {
    if(obj.hasOwnProperty(id)) {
        let temp = obj[id];
        delete obj[id];
        return temp;
    }

    return null;
}


// Returns all messages that need to be responded to
function findReplyMessages(messages, userId) {
    let inbox = [];


    // Loop over individual messages and fill obj table with keys
    messages.forEach((message) => {
        obj[message.message_id] = message.reply;
        messageObj[message.message_id] = message;
    });

    // Loop over individual messages and fill obj table with keys
    messages.forEach((message) => {
        let arr = [];

        // Reply id is populated -- We have a thread we should follow
        if(message.reply !== null) {
            msgId = message.message_id;

            // Loop over messages until you find the end of the conversation
            while(msgId !== null) {
                // If the number is still in the obj, add it to the arr
                if(obj.hasOwnProperty(msgId)) {
                    arr.push(msgId);
                }

                // Reassign the message id by finding the reply Id
                msgId = hasReplyInObj(msgId);
            }

            // Need to check that the length of the array is greater than 0 so that we can find the max id in the thread
            if(arr.length > 0) {
                // Lets push the message with the greatest id if and only if the userId passed in is the rec_Id
                let recentMessageId = Math.max(...arr).toString();
                let tempMessage = messageObj[recentMessageId];

                // If message is intended for the user
                if(tempMessage.rec_Id === userId) {
                    inbox.push(messageObj[recentMessageId]);
                }
            }
        } else {
            // We do not have a thread to follow and this is the beginning of a new convo
            if(message.rec_Id === userId && obj.hasOwnProperty(message.message_id)) {
                // Our message could be the beginning without a history present
                inbox.push(messageObj[message.message_id.toString()])
            }
        }
    });

    return inbox;
}


// Grabs all messages for a user that require them to respond ( INBOX )
router.get('/inbox', (req,res) => {
    userId = req.params.userId;

});


// Grabs all messages from db
router.get('/sent', (req,res) => {
    userId = req.params.userId;

});


// Grabs all messages from db
router.get('/notifications', (req,res) => {
    userId = req.params.userId;



// Grabs all messages from db
router.get('/notifications/sent', (req,res) => {
    userId = req.params.userId;

});


// Creates a new message
router.post('/', (req,res) => {
    const {sender,reciever,subject,body, msgType} = req.body;

});


// updates all messages
router.put('/', (req,res) => {

});


// updates all messages
router.patch('/', (req,res) => {

});


// deletes all messages
router.delete('/', (req,res) => {

});


// Grab specific message by their id
router.get('/:messageId', (req,res) => {
    const messageId = req.params.messageId;

});


// updates message
router.put('/:messageId', (req,res) => {
    const messageId = req.params.messageId;
    const {sender,reciever,subject,body, msgType} = req.body;

});


// updates all messages
router.patch('/:messageId', (req,res) => {
    const messageId = req.params.messageId;
    const {sender,reciever,subject,body, msgType} = req.body;

});


// deletes message
router.delete('/:messageId', (req,res) => {
    const messageId = req.params.messageId;

});


module.exports = router;