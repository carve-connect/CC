var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');



// Grabs all users from db
router.get('/', (req,res) => {
    // Find all users from database
    carveId = req.params.carveId;

});


// Creates a new user
router.post('/', (req,res) => {
    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;

});

// updates all users
router.put('/', (req,res) => {

});

// updates all users
router.patch('/', (req,res) => {

});

// deletes all users
router.delete('/', (req,res) => {

});

// Grab specific user by their id
router.get('/:userId', (req,res) => {
    const userId = req.params.userId;

});

// updates a single user based on the user id
router.put('/:userId', (req,res) => {
    const userId = req.params.userId;
    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;

});

// updates a single user based on the user id
router.patch('/:userId', (req,res) => {
    const userId = req.params.userId;
    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;

});

// deletes a single user based on the user id
router.delete('/:userId', (req,res) => {
    const userId = req.params.userId;

});


module.exports = router;