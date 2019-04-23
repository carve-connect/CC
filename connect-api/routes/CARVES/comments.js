var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');



// Grabs all comments from db
router.get('/', (req,res) => {
    // Find all comments from database
    comment_list = "CALL get_carve_comments(?)";
    carveId = req.params.carveId;
    con.query(comment_list,[carveId], (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end;
    })
});

// Creates a new comment
router.post('/', (req,res) => {
    const {poster,carve,media,profile,comment} = req.body;
    // The commentname wasn't found in the database
    // Create insert query for new comment
    // Added a comment
    new_comment = "CALL add_comment(?,?,?,?,?)";
    // Execute the query to insert into the database
    con.query(new_comment,[poster,carve,media,profile,comment], (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// updates all comments
router.put('/', (req,res) => {
    // The commentname wasn't found in the database
    // Create insert query for new comment
    // Added a comment
    new_comment = "CALL update_comments()";
    // Execute the query to insert into the database
    con.query(new_comment,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// updates all comments
router.patch('/', (req,res) => {
    // The commentname wasn't found in the database
    // Create insert query for new comment
    // Added a comment
    new_comment = "CALL update_comments()";
    // Execute the query to insert into the database
    con.query(new_comment,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// deletes all comments
router.delete('/', (req,res) => {
    delete_comments = "CALL delete_comments()";
    con.query(delete_comments, (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// Grab specific comment by their id
router.get('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    get_comment  = "call get_comment(?)";
    con.query(get_comment, [commentId],(err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end;
    })
});

// updates comment
router.put('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    update_comment = "CALL update_comment(?,?,?,?,?,?)";
    con.query(update_comment,[commentId,poster,carve,media,profile,comment],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// updates all comments
router.patch('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    update_comment = "CALL update_comment(?,?,?,?,?,?)";
    con.query(update_comment,[commentId,poster,carve,media,profile,comment],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end;
    })
});

// deletes comment
router.delete('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    delete_comments = "CALL delete_comment(?)";
    con.query(delete_comments, [commentId],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({msg:'comment deleted'}).end;
    })
});

module.exports = router;