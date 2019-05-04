var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');



// Grabs all carves from db
router.get('/', (req,res) => {
    // Find all carves from database
    userId = req.params.userId;

});


// Creates a new carve
router.post('/', (req,res) => {
    creatorId = req.params.userId;
    const {carveName,venueId,carveType,athlete,photo,date, sports} = req.body;

});

// updates all carves
router.put('/', (req,res) => {

});

// updates all carves
router.patch('/', (req,res) => {

});

// deletes all carves
router.delete('/', (req,res) => {

});

// Grab specific carve by their id
router.get('/:carveId', (req,res) => {
    const carveId = req.params.carveId;

});

// updates carve
router.put('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    const {carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports} = req.body;

});

// updates all carves
router.patch('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    const {carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports} = req.body;

});

// deletes carve
router.delete('/:carveId', (req,res) => {
    const carveId = req.params.carveId;

});

router.get('/names', (req,res) => {

});

router.get('/comment_info', (req,res) => {

});


module.exports = router;