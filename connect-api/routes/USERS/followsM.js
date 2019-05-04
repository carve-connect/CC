var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');


//get /followed
router.get('/buddies/media', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;

});

// Returns all venues followed by a specific user
router.get('/venues/media', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;

});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/media', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;

});

//get /followed
router.get('/buddies/carves', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;

});

//get /followed
router.get('/buddies/carves/made', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;

});

// Returns all venues followed by a specific user
router.get('/venues/carves', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;

});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/carves', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;

});

// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;

});


// Creates a new follow
router.post('/', (req,res) => {
    const {user1, user2, ven, ty} = req.body;

});

// updates all follows
router.put('/', (req,res) => {

});

// updates all follows
router.patch('/', (req,res) => {

});

// Route takes in the venue id and the user_id in the body
// deletes all follows (Should be from specific user and not all of them)
router.delete('/', (req,res) => {

});

//get /followed
router.get('/buddies', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;

});

// Returns all venues followed by a specific user
router.get('/venues', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;

});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/followers', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;

});

// Grab specific follow by their id
router.get('/:followId', (req,res) => {
    const followId = req.params.followId;

});

// updates follow
router.put('/:followId', (req,res) => {
    const followId = req.params.followId;
    const {user1, user2, ven, ty} = req.body;

});

// updates all follows
router.patch('/:followId', (req,res) => {
    const followId = req.params.followId;
    const {user1, user2, ven, ty} = req.body;

});

// Deletes venue follow
router.delete('/venues', (req, res) => {
    const { user_id1, venue_id } = req.body;

});

// Deletes venue follow
router.delete('/buddy', (req, res) => {
    const {user_id1, user_id2} = req.body;

});


// Deletes venue follow
router.delete('/following', (req, res) => {
    const {user_id1, user_id2} = req.body;

});


// deletes follow
router.delete('/:followId', (req,res) => {
    const followId = req.params.followId;

});

// get /buddies/  returns buddy list for user procedure call => buddy_list(?) [userId]

//get /followers
router.get('/?', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;

});


//put /follow ?venueId & userId

router.post('/buddies/:userId1', (req,res) => {
    // Find all users from database
    const userId = req.params.userId;
    const userId1 = req.params.userId1;

});


module.exports = router;