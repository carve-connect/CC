var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/likeFunctions');


// Grabs all likes from db
router.get('/', (req,res) => {
    functions.usersLikesGet(res);
});


// Creates a new like
router.post('/', (req,res) => {
    const {poster,likeordislike,carve,media,comment} = req.body;
    functions.usersLikesPost([poster,likeordislike,carve,media,comment], res);
});

// updates all likes
router.put('/', (req,res) => {
    functions.usersLikesUpdate(res);
});

// updates all likes
router.patch('/', (req,res) => {
    functions.usersLikesUpdate(res);
});

// deletes all likes
router.delete('/', (req,res) => {
    functions.usersLikesDelete(res);
});

// Grab specific like by their id
router.get('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    functions.usersLikeGet(likeId, res);
});

// updates like
router.put('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    const {poster,likeordislike,carve,media,comment} = req.body;
    functions.usersLikesGet(likeId, [poster,likeordislike,carve,media,comment], res);
});

// updates like
router.patch('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    const {poster,likeordislike,carve,media,comment} = req.body;
    functions.usersLikesGet(likeId, [poster,likeordislike,carve,media,comment], res);
});

// deletes like
router.delete('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    functions.usersLikeDelete(likeId, res);
});


module.exports = router;