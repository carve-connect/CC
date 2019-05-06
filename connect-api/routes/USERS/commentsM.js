var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/commentFunctions');


// Grabs all comments from db
router.get('/', (req,res) => {
    functions.usersCommentsGet(res);

});


// Creates a new comment
router.post('/', (req,res) => {
    const {poster,carve,media,profile,comment} = req.body;
    functions.usersCommentsPost([poster,carve,media,profile,comment], res);
});

// updates all comments
router.put('/', (req,res) => {
    functions.usersCommentsUpdate(res);
});

// updates all comments
router.patch('/', (req,res) => {
    functions.usersCommentsUpdate(res);
});

// deletes all comments
router.delete('/', (req,res) => {
    functions.usersCommentsDelete(res);
});

// Grab specific comment by their id
router.get('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    functions.usersCommentGet(commentId, res);
});

// updates comment
router.put('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    functions.usersCommentUpdate(commentId, [poster,carve,media,profile,comment], res);
});

// updates all comments
router.patch('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    functions.usersCommentUpdate(commentId, [poster,carve,media,profile,comment], res);
});

// deletes comment
router.delete('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    functions.usersCommentDelete(commentId, res);
});


module.exports = router;