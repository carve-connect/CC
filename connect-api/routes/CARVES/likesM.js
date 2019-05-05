var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('./middleware/carves/likeFunctions');



// Grabs all likes from db
router.get('/', (req,res) => {
    carveId = req.params.carveId;
    functions.carveLikesGet(carveId, res);

});

// Grabs all likes from db
router.get('/dislike', (req,res) => {
    carveId = req.params.carveId;

});

// Creates a new like
router.post('/', (req,res) => {
    const {poster,carve} = req.body;

});

// Creates a new like
router.post('/dislike', (req,res) => {
    const {poster,carve} = req.body;

});

// deletes all likes
router.delete('/', (req,res) => {

});

// Grab specific like by their id
router.get('/:likeId', (req,res) => {
    const likeId = req.params.likeId;

});

// deletes a specific like
router.delete('/:likeId', (req,res) => {
    const likeId = req.params.likeId;

});


module.exports = router;