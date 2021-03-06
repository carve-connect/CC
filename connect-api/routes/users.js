var express = require('express');

var router = express.Router({mergeParams: true});

const con = require('../db');

var functions = require('./middleware/users/userFunctions');


/*

 * Endpoint for all user related requests

 */



// Gets users based on the query parameters, if no parameters are given, it gets all users from db

router.get('/', (req,res) => {

    // Find all users from database

    let sql = "CALL get_users()";

    const searchTerm = req.query.search;


    // If we are querying something to search for, lets make a custom sql statement

    if (typeof searchTerm != 'undefined') {

        sql = `select * from USERS where username like \'%${searchTerm}%\' or first_name like \'%${searchTerm}%\' or last_name like \'%${searchTerm}%\'`;


    }


    con.query(sql, (err, results) => {

        if (err) throw err;

        res.status(200).jsonp({users: results}).end();


    })


});



// Logs out all users

router.get('/logout', (req,res) => {


    get_user  = "call logout_all()";

    con.query(get_user,(err, results) => {

        if (err) throw err;


        res.status(200).jsonp({users: results}).end();

    })

});



// Creates a new user

router.post('/', (req,res) => {

    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;

    usrCheck = "Call username_check(?)";

    //console.log(type+snow_sports+water_sports+land_sports+air_sports);

    con.query(usrCheck,[username], (err,results)=> {

        if (results[0][0][0] != 0)

        {

            check = 0;

            res.status(202).jsonp({check}).end();


            console.log('duplicate username cant add ');

        }

        else {


            // The username wasn't found in the database

            // Create insert query for new user

            // Added a comment

            new_user = "CALL add_user(?,?,?,?,?,?,?,?,?,?,?)";

            // Execute the query to insert into the database

            con.query(new_user, [username, email, password, first_name, last_name, description, type, snow_sports[0], water_sports[0], land_sports[0], air_sports[0]], (err, results1) => {

                if (err) throw err;

                con.query(usrCheck,[username], (err,results3)=> {

                    if (err) throw err;

                    check = results3[0][0].user_Id;

                    res.status(201).jsonp({check}).end();


                    console.log(check);

                })

            })

        }

    })

});



// updates all users

router.put('/', (req,res) => {


    // The username wasn't found in the database

    // Create insert query for new user

    // Added a comment

    new_user = "CALL update_users()";

    // Execute the query to insert into the database

    con.query(new_user,(err, results) => {

        if (err) throw err;


        res.status(201).jsonp({results}).end();

    })

});



// updates all users

router.patch('/', (req,res) => {


    // The username wasn't found in the database

    // Create insert query for new user

    // Added a comment

    new_user = "CALL update_users()";

    // Execute the query to insert into the database

    con.query(new_user,(err, results) => {

        if (err) throw err;


        res.status(201).jsonp({results}).end();

    })

});





// deletes all users

router.delete('/', (req,res) => {


    delete_users = "CALL delete_users()";


    con.query(delete_users, (err, results) => {

        if (err) throw err;


        res.status(201).jsonp({results}).end();

    })

});



// Grab specific user by their id

router.get('/:userId', (req,res) => {

    const userId = req.params.userId;
    functions.userGet(userId, res);

});





// Log out the current user

router.get('/:userId/logout', (req,res) => {

    const userId = req.params.userId;


    get_user  = "call logout(?)";


    con.query(get_user, [userId],(err, results) => {

        if (err) throw err;


        res.status(200).jsonp({users: results}).end();


    })

});



// updates a specific user

router.put('/:userId', (req,res) => {

    const userId = req.params.userId;

    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;


    update_user = "CALL update_user(?,?,?,?,?,?,?,?,?,?,?,?)";


    con.query(update_user, [userId, username, email, password, first_name, last_name, description, type, snow_sports[0], water_sports[0], land_sports[0], air_sports[0]], (err, results) => {

        if (err) throw err;


        res.status(201).jsonp({results}).end();

    })

});



// updates a specific user

router.patch('/:userId', (req,res) => {

    const userId = req.params.userId;

    const {username, email, password, first_name, last_name, description, type, snow_sports, water_sports, land_sports, air_sports} = req.body;


    update_user = "CALL update_user(?,?,?,?,?,?,?,?,?,?,?,?)";


    con.query(update_user, [userId, username, email, password, first_name, last_name, description, type, snow_sports[0], water_sports[0], land_sports[0], air_sports[0]], (err, results) => {

        if (err) throw err;


        res.status(201).jsonp({results}).end();


    })

});



// deletes user

router.delete('/:userId', (req,res) => {

    const userId = req.params.userId;


    delete_users = "CALL delete_user(?)";


    con.query(delete_users, [userId],(err, results) => {

        if (err) throw err;


        res.status(201).jsonp({msg: 'user deleted'}).end();


    })

});



router.get('/:userId/follows/followers/named ', (req,res) => {

    const userId = req.params.userId;


    get_named_followers  = "call get_named_followers(?)";


    con.query(get_named_followers, [userId],(err, results) => {

        if (err) throw err;

        console.log(results[0][0]);


        res.status(200).jsonp({users: results}).end();


    })

});



router.get('/:userId/follows/venues/named ', (req,res) => {

    const userId = req.params.userId;


    get_named_vFollowed  = "call get_named_vFollowed(?)";


    con.query(get_named_vFollowed, [userId],(err, results) => {

        if (err) throw err;

        console.log(results[0][0]);


        res.status(200).jsonp({users: results}).end();


    })

});



router.get('/:userId/carves/involved', (req,res) => {

    const userId = req.params.userId;


    get_users_involved_carves = "call get_users_involved_carves(?)";


    con.query(get_users_involved_carves, [userId], (err, results) => {

        if (err) throw err;

        console.log(results[0][0]);


        res.status(200).jsonp({users: results}).end();


    })

});



router.get('/:userId/follows/named', (req,res) => {

    const userId = req.params.userId;


    get_named_followed = "CALL get_named_followed(?)";


    con.query(get_named_followed, [userId],(err, results) => {

        if (err) throw err;


        res.status(201).jsonp({msg: 'user returned'}).end();




    })

});



module.exports = router;