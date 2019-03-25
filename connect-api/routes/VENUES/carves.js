var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');



// Grabs all carves from db
router.get('/', (req,res) => {
    // Find all carves from database
    console.log(req.params);
    venueId = req.params.venueId;
    carve_list = "CALL get_venue_carve(?)";
    // "CALL get_venue_carves(?)"   [venueId]

    console.log(req.query);

    con.query(carve_list,[venueId], (err, results) => {
        if (err) throw err;

        res.status(200).jsonp({msg:'carves list',results}).end;

    })
});


// Creates a new carve
router.post('/', (req,res) => {
    const {carveName,creatorId,carveType,athlete,photo,date, snow_sports, water_sports, land_sports, air_sports} = req.body;
    venueId = req.params.venueId;
    console.log(" new carve entered with carvename: " + carveName);
    if(false)
    {

    }else{
        // The carvename wasn't found in the database
        // Create insert query for new carve
        // Added a comment
        new_carve = "CALL add_carve(?,?,?,?,?,?,?,?,?,?,?,?)";
        // Execute the query to insert into the database
        con.query(new_carve,[carveName,creatorId,venueId,carveType[0],athlete,photo,date, snow_sports[0], water_sports[0], land_sports[0], air_sports[0]], (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'carve added',results}).end;
        })

    }
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
        res.status(201).jsonp({msg:'carves updated',results}).end;
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
        res.status(201).jsonp({msg:'carves updated',results}).end;
    })


});

// deletes all carves
router.delete('/', (req,res) => {
    delete_carves = "CALL delete_carves()";
    con.query(delete_carves, (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'all carves deleted',results}).end;
    })


});

// Grab specific carve by their id
router.get('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    get_carve  = "call get_carve(?)";
    con.query(get_carve, [carveId],(err, results) => {
        if (err) throw err;
        res.status(200).jsonp({msg:'carve info:',results}).end;
    })
});

// update carve by carve ID for given venue
router.put('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    venueId = req.params.venueId;
    const {carveName,creatorId,carveType,athlete,photo,date,completed, snow_sports, water_sports, land_sports, air_sports} = req.body;
    console.log(" new carve updated with carvename: " + carveName);
    update_carve = "CALL update_carve(?,?,?,?,?,?,?,?,?,?,?,?,?)";

    con.query(update_carve,[carveId,carveName,creatorId,venueId,carveType[0],athlete,photo,date,completed, snow_sports[0], water_sports[0], land_sports[0], air_sports[0]],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'carve updated via put',results}).end;
    })
});

// update carve by carve ID for given venue
router.patch('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    venueId = req.params.venueId;
    const {carveName,creatorId,carveType,athlete,photo,date,completed, snow_sports, water_sports, land_sports, air_sports} = req.body;
    console.log(" new carve updated with carvename: " + carveName);
    update_carve = "CALL update_carve(?,?,?,?,?,?,?,?,?,?,?,?,?)";

    con.query(update_carve,[carveId,carveName,creatorId,venueId,carveType[0],athlete,photo,date,completed, snow_sports[0], water_sports[0], land_sports[0], air_sports[0]],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'carve updated via patch',results}).end;
    })
});

// deletes carve
router.delete('/:carveId', (req,res) => {
    const carveId = req.params.carveId;
    console.log(" deleting carve with carve id: " + carveId);
    delete_carves = "CALL delete_carve(?)";
    con.query(delete_carves, [carveId],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'carve deleted'}).end;
    })


});


module.exports = router;