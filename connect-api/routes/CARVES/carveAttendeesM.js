var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('./middleware/carves/carveAttendeeFuntions');


// Grabs all carve_attendees from db
router.get('/', (req,res) => {
    // Find all carve_attendees from database
    carveId = req.params.carveId;
    functions.carveAttendeesGet(carveId, res);

});


// Creates a new carve_attendees
router.post('/', (req,res) => {
    const {carve,user,userType} = req.body;
    functions.carveAttendeesPost([carve,user,userType], res);
});

// updates all carve_attendeess
router.put('/', (req,res) => {
    functions.carveAttendeesPut(res);

});

// updates all carve_attendeess
router.patch('/', (req,res) => {
    functions.carveAttendeesPatch(res);

});

// deletes all carve_attendees
router.delete('/', (req,res) => {
    functions.carveAttendeesDelete(res);

});

// Grab specific carve_attendees by their id
router.get('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    functions.carveAttendeeGet(carve_attendeesId, res);
});

// updates carve_attendee
//router.put('/:carve_attendeesId', getInfo('carve'));

// updates carve_attendee
//router.patch('/:carve_attendeesId', getInfo('carve'));

// deletes carve_attendee
router.delete('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    functions.carveAttendeeDelete(carve_attendeesId, res);
});


module.exports = router;