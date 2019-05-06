var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/followFunctions');


//get /followed
router.get('/buddies/media', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersBuddyMediaGet(userId, res);
});

// Returns all venues followed by a specific user
router.get('/venues/media', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersVenueFollowedMediaGet(userId, res);
});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/media', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersFollowedMediaGet(userId, res);
});

//get /followed
router.get('/buddies/carves', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersBuddyCarvesGet(userId, res);
});

//get /followed
router.get('/buddies/carves/made', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersVenueFollowedCarvesGet(userId, res);
});

// Returns all venues followed by a specific user
router.get('/venues/carves', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersAllFollowedCarvesGet(userId, res);
});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/carves', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersAllFollowedCarvesGet(userId, res);
});

// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersFollowedGet(userId, res);
});


// Creates a new follow
router.post('/', (req,res) => {
    const {user1, user2, ven, ty} = req.body;
    functions.usersFollowsPost([user1, user2, ven, ty], res);
});

// updates all follows
router.put('/', (req,res) => {
    functions.usersFollowsUpdate(res);
});

// updates all follows
router.patch('/', (req,res) => {
    functions.usersFollowsUpdate(res);
});

// Route takes in the venue id and the user_id in the body
// deletes all follows (Should be from specific user and not all of them)
router.delete('/', (req,res) => {
    functions.usersAllFollowsDelete(res);
});

//get /followed
router.get('/buddies', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersBuddiesGet(userId, res);
});

// Returns all venues followed by a specific user
router.get('/venues', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersFollowedVenuesGet(userId, res);
});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/followers', (req,res) => {
    // Find all follows from database
    userId = req.params.userId;
    functions.usersAllFollowersGet(userId, res);
});

// Grab specific follow by their id
router.get('/:followId', (req,res) => {
    const followId = req.params.followId;
    functions.usersFollowGet(followId, res);
});

// updates follow
router.put('/:followId', (req,res) => {
    const followId = req.params.followId;
    const {user1, user2, ven, ty} = req.body;
    functions.usersFollowUpdate(followId, [user1, user2, ven, ty], res);
});

// updates all follows
router.patch('/:followId', (req,res) => {
    const followId = req.params.followId;
    const {user1, user2, ven, ty} = req.body;
    functions.usersFollowUpdate(followId, [user1, user2, ven, ty], res);
});

// Deletes venue follow
router.delete('/venues', (req, res) => {
    const { user_id1, venue_id } = req.body;
    functions.usersVenueFollowDelete([user_id1, venue_id], res);
});

// Deletes buddy follow
router.delete('/buddy', (req, res) => {
    const {user_id1, user_id2} = req.body;
    functions.usersBuddyDelete([user_id1, user_id2], res)
});


// Deletes venue follow
router.delete('/following', (req, res) => {
    const {user_id1, user_id2} = req.body;
    functions.usersFollowDelete([user_id1, user_id2], res);
});


// deletes follow
router.delete('/:followId', (req,res) => {
    const followId = req.params.followId;
    functions.usersFollowIdDelete(followId, res);
});


//put /follow ?venueId & userId

router.post('/buddies/:userId1', (req,res) => {
    // Find all users from database
    const userId = req.params.userId;
    const userId1 = req.params.userId1;
    functions.usersBuddyPost(userId, userId1, res);
});


module.exports = router;