var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');


// Grabs all carves from db
router.get('/', (req,res) => {
    // Find all carves from database
    userId = req.params.userId;
    carve_list = "CALL get_users_created_carves(?)";
    con.query(carve_list, [userId], (err, c) => {
        if (err) throw err;
        res.status(200).jsonp({c}).end();
    })
});


// Creates a new carve
router.post('/', (req,res) => {
    creatorId= req.params.userId;
    const {carveName,venueId,carveType,athlete,photo,date, sports} = req.body;
    // The carvename wasn't found in the database
    // Create insert query for new carve
    // Added a comment
    new_carve = "CALL add_carve(?,?,?,?,?,?,?,?)";
    // Execute the query to insert into the database
    con.query(new_carve,[carveName,creatorId,venueId,carveType[0],athlete,photo,date, sports[0]], (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// updates all carves
router.put('/', (req,res) => {
    // The carvename wasn't found in the database
    // Create insert query for new carve
    // Added a comment
    new_carve = "CALL update_carves()";
    // Execute the query to insert into the database
    con.query(new_carve,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// updates all carves
router.patch('/', (req,res) => {
    // The carvename wasn't found in the database
    // Create insert query for new carve
    // Added a comment
    new_carve = "CALL update_carves()";
    // Execute the query to insert into the database
    con.query(new_carve,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// deletes all carves
router.delete('/', (req,res) => {
    delete_carves = "CALL delete_carves()";
    con.query(delete_carves, (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// Grab specific carve by their id
router.get('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    get_carve  = "call get_carve(?)";
    con.query(get_carve, [carveId],(err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});

// updates carve
router.put('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    const {carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports} = req.body;
    update_carve = "CALL update_carve(?,?,?,?,?,?,?,?,?,?,?,?,?)";
    con.query(update_carve,[carveId,carveName,creatorId,venueId,carveType[0],athlete,photo,date,completed, sports[0]],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// updates all carves
router.patch('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    const {carveName,creatorId,venueId,carveType,athlete,photo,date,completed, sports} = req.body;
    update_carve = "CALL update_carve(?,?,?,?,?,?,?,?,?,?,?,?,?)";
    con.query(update_carve,[carveId,carveName,creatorId,venueId,carveType[0],athlete,photo,date,completed, sports[0]],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// deletes carve
router.delete('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    delete_carves = "CALL delete_carve(?)";
    con.query(delete_carves, [carveId],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'carve deleted'}).end();
    })
});

router.get('/names', (req,res) => {
    get_carves_named_attendees = "CALL get_carves_named_attendees(?)";
    con.query(get_carves_named_attendees, (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});

router.get('/comment_info', (req,res) => {
    get_carve_comment_info = "CALL get_carve_comment_info(?)";
    con.query(get_carve_comment_info, (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});


module.exports = router;