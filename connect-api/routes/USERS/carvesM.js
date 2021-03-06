var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/carveFunctions');


// Grabs all carves from db
router.get('/', (req,res) => {
    // Find all carves from database
    userId = req.params.userId;
    functions.usersCarvesGet(userId,res);
});


// Creates a new carve
router.post('/', (req,res) => {
    creatorId = req.params.userId;
    const {carveName,venueId,carveType,athlete,photo,date, sports} = req.body;
    functions.usersCarvePost(creatorId, [carveName,venueId,carveType,athlete,photo,date, sports], res);
});

// updates all carves
router.put('/', (req,res) => {
    functions.usersCarvesUpdate(res);
});

// updates all carves
router.patch('/', (req,res) => {
    functions.usersCarvesUpdate(res);

});

// deletes all carves
router.delete('/', (req,res) => {
    functions.usersCarvesDelete(res);

});

// Grab specific carve by their id
router.get('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    functions.usersCarveGet(carveId, res);
});

// updates carve
router.put('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    const {carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports} = req.body;
    functions.usersCarveUpdate(carveId, [carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports], res);
});

// updates all carves
router.patch('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    const {carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports} = req.body;
    functions.usersCarveUpdate(carveId, [carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports], res);
});

// deletes carve
router.delete('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    functions.usersCarveDelete(carveId, res);
});

router.get('/names', (req,res) => {
    functions.usersCarveGetNames(res);
});

router.get('/comment_info', (req,res) => {
    functions.usersCarveGetCommentInfo(res);
});


module.exports = router;