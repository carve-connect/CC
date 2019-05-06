var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/carves/userFunctions');



// Grabs all users from db
router.get('/', (req,res) => {
    // Find all users from database
    carveId = req.params.carveId;
    functions.carveUsersGet(carveId, res);

});


// Creates a new user
router.post('/', (req,res) => {
    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;
    functions.carveUserPost([username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports], res);
});

// updates all users
router.put('/', (req,res) => {
    functions.carveUsersUpdate(res);
});

// updates all users
router.patch('/', (req,res) => {
    functions.carveUsersUpdate(res);
});

// deletes all users
router.delete('/', (req,res) => {
    functions.carveUsersDelete(res);
});

// Grab specific user by their id
router.get('/:userId', (req,res) => {
    const userId = req.params.userId;
    functions.carveUserGet(userId, res);
});

// updates a single user based on the user id
router.put('/:userId', (req,res) => {
    const userId = req.params.userId;
    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;
    functions.carveUserUpdate(userId, [username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports], res);
});

// updates a single user based on the user id
router.patch('/:userId', (req,res) => {
    const userId = req.params.userId;
    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;
    functions.carveUserUpdate(userId, [username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports], res);
});

// deletes a single user based on the user id
router.delete('/:userId', (req,res) => {
    const userId = req.params.userId;
    functions.carveUserDelete(userId);
});


module.exports = router;