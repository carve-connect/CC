var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/commentFunctions');


// Grabs all comments from db
router.get('/', (req,res) => {
    functions.userCommentsGet(res);

});


// Creates a new comment
router.post('/', (req,res) => {
    const {poster,carve,media,profile,comment} = req.body;

});

// updates all comments
router.put('/', (req,res) => {

});

// updates all comments
router.patch('/', (req,res) => {

});

// deletes all comments
router.delete('/', (req,res) => {

});

// Grab specific comment by their id
router.get('/:commentId', (req,res) => {
    const commentId = req.params.commentId;

});

// updates comment
router.put('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;

});

// updates all comments
router.patch('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;

});

// deletes comment
router.delete('/:commentId', (req,res) => {
    const commentId = req.params.commentId;

});


module.exports = router;