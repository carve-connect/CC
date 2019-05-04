var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');


// Grabs all carve_attendees from db
router.get('/', (req,res) => {
    // Find all carve_attendees from database
    carveId = req.params.carveId;

});


// Creates a new carve_attendees
router.post('/', (req,res) => {
    const {carve,user,userType} = req.body;

});

// updates all carve_attendeess
router.put('/', (req,res) => {

});

// updates all carve_attendeess
router.patch('/', (req,res) => {

});

// deletes all carve_attendees
router.delete('/', (req,res) => {

});

// Grab specific carve_attendees by their id
router.get('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;

});

// updates carve_attendee
//router.put('/:carve_attendeesId', getInfo('carve'));

// updates carve_attendee
//router.patch('/:carve_attendeesId', getInfo('carve'));

// deletes carve_attendee
router.delete('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;

});


module.exports = router;