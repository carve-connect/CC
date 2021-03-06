var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');


// Grabs all carve_attendees from db
router.get('/', (req,res) => {
    // Find all carve_attendees from database
    carveId = req.params.carveId;
    carve_attendees_list = "SELECT * from all_carve_attendees left join all_users on all_carve_attendees.user = all_users.user_id where all_carve_attendees.carve = (?)";
    con.query(carve_attendees_list, [carveId], (err, attend) => {
        if (err) throw err;
        res.status(200).jsonp({attend}).end();
    })
});


// Creates a new carve_attendees
router.post('/', (req,res) => {
    const {carve,user,userType} = req.body;
    // The carve_attendeesname wasn't found in the database
    // Create insert query for new carve_attendees
    // Added a carve_attendees
    new_carve_attendees = "CALL add_carve_attendee(?,?,?)";
    // Execute the query to insert into the database
    con.query(new_carve_attendees,[carve,user,userType[0]], (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// updates all carve_attendeess
router.put('/', (req,res) => {
    // The carve_attendeesname wasn't found in the database
    // Create insert query for new carve_attendees
    // Added a carve_attendees
    new_carve_attendees = "CALL update_carve_attendees()";
    // Execute the query to insert into the database
    con.query(new_carve_attendees,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// updates all carve_attendeess
router.patch('/', (req,res) => {
    // The carve_attendeesname wasn't found in the database
    // Create insert query for new carve_attendees
    // Added a carve_attendees
    new_carve_attendees = "CALL update_carve_attendees()";
    // Execute the query to insert into the database
    con.query(new_carve_attendees,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// deletes all carve_attendees
router.delete('/', (req,res) => {
    delete_carve_attendeess = "CALL delete_carve_attendees()";
    con.query(delete_carve_attendeess, (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// Grab specific carve_attendees by their id
router.get('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    get_carve_attendees  = "call get_carve_attendee(?)";
    con.query(get_carve_attendees, [carve_attendeesId],(err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});

// updates carve_attendee
//router.put('/:carve_attendeesId', getInfo('carve'));

// updates carve_attendee
//router.patch('/:carve_attendeesId', getInfo('carve'));

// deletes carve_attendee
router.delete('/:carve_attendeesId', (req,res) => {
    const carve_attendeesId = req.params.carve_attendeesId;
    delete_carve_attendeess = "CALL delete_carve_attendee(?)";
    con.query(delete_carve_attendeess, [carve_attendeesId],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'carve_attendees deleted'}).end();
    })
});


module.exports = router;