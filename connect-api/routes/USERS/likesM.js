var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/likeFunctions');


// Grabs all likes from db
router.get('/', (req,res) => {

});


// Creates a new like
router.post('/', (req,res) => {
    const {poster,likeordislike,carve,media,comment} = req.body;

});

// updates all likes
router.put('/', (req,res) => {

});

// updates all likes
router.patch('/', (req,res) => {

});

// deletes all likes
router.delete('/', (req,res) => {

});

// Grab specific like by their id
router.get('/:likeId', (req,res) => {
    const likeId = req.params.likeId;

});

// updates like
router.put('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    const {poster,likeordislike,carve,media,comment} = req.body;

});

// updates like
router.patch('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    const {poster,likeordislike,carve,media,comment} = req.body;

});

// deletes like
router.delete('/:likeId', (req,res) => {
    const likeId = req.params.likeId;

});


module.exports = router;