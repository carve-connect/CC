var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/carveAttendeeFunctions');


// Grabs all carve_attendees from db
router.get('/', (req,res) => {
    userId = req.params.userId;
    functions.carveAttendeesGet(userId, res);
});


// Creates a new carve_attendees
router.post('/', (req,res) => {
    const {carve,user,userType} = req.body;
    functions.carveAttendeesPost([carve,user,userType], res);

});

// updates all carve_attendeess
router.put('/', (req,res) => {
    functions.carveAttendeesUpdate(res);

});

// updates all carve_attendeess
router.patch('/', (req,res) => {
    functions.carveAttendeesUpdate(res);

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

// updates carve_attendees
router.put('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    const {carve,user,userType} = req.body;
    functions.carveAttendeeUpdate(carve_attendeesId,[carve,user,userType], res);

});

// updates all carve_attendeess
router.patch('/:carve_attendeesId', (req, res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    const {carve,user,userType} = req.body;
    functions.carveAttendeeUpdate(carve_attendeesId,[carve,user,userType], res);

});

// deletes carve_attendees
router.delete('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    functions.carveAttendeeDelete(carve_attendeesId, res);

});

router.get('/named', (req,res) => {
    functions.carveAttendeesGetNamed(res);

});

module.exports = router;