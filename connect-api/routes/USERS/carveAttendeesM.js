var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('./middleware/users/userFunctions');


// Grabs all carve_attendees from db
router.get('/', (req,res) => {
    userId = req.params.userId;

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

// updates carve_attendees
router.put('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    const {carve,user,userType} = req.body;

});

// updates all carve_attendeess
router.patch('/:carve_attendeesId', (req, res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    const {carve,user,userType} = req.body;

});

// deletes carve_attendees
router.delete('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;

});

router.get('/named', (req,res) => {

});

module.exports = router;