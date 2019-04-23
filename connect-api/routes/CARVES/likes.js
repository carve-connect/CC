var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');



// Grabs all likes from db
router.get('/', (req,res) => {
    // Find all likes from database
    like_list = "CALL get_carve_likes(?)";
    carveId = req.params.carveId;
    con.query(like_list,[carveId], (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end;
    })
});

// Grabs all likes from db
router.get('/dislike', (req,res) => {
    // Find all likes from database
    like_list = "CALL get_carve_dislikes(?)";
    carveId = req.params.carveId;
    con.query(like_list,[carveId], (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end
    })
});

// Creates a new like
router.post('/', (req,res) => {
    const {poster,carve} = req.body;
    // The likename wasn't found in the database
    // Create insert query for new like
    // Added a comment
    new_like = "CALL add_like(?,?,?,?,?)";
    // Execute the query to insert into the database
    con.query(new_like,[poster,'like',carve,null,null], (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// Creates a new like
router.post('/dislike', (req,res) => {
    const {poster,carve} = req.body;
    // The likename wasn't found in the database
    // Create insert query for new like
    // Added a comment
    new_like = "CALL add_like(?,?,?,?,?)";
    // Execute the query to insert into the database
    con.query(new_like,[poster,'dislike',carve,null,null], (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// deletes all likes
router.delete('/', (req,res) => {
    delete_likes = "CALL delete_likes()";
    con.query(delete_likes, (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// Grab specific like by their id
router.get('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    get_like  = "call get_like(?)";
    con.query(get_like, [likeId],(err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end;
    })
});

// deletes a specific like
router.delete('/:likeId', (req,res) => {
    const likeId = req.params.likeId;
    delete_likes = "CALL delete_like(?)";
    con.query(delete_likes, [likeId],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'like deleted'}).end;
    })
});


module.exports = router;