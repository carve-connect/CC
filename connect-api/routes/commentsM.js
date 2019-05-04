var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../db');

/*
 * Endpoint for all comment related requests
 */

// Grabs all comments from the database
router.get('/', (req,res) => {
    // Create the query to get all comments from the database
    comment_list = "CALL get_comments()";
    // Execute the query to pull from the database
    con.query(comment_list, (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});


// Creates a new comment
router.post('/', (req,res) => {
    const {poster,carve,media,profile,comment} = req.body;
    // The commentname wasn't found in the database
    // Create insert query for new comment
    new_comment = "CALL add_comment(?,?,?,?,?)";
    // Execute the query to insert into the database
    con.query(new_comment,[poster,carve,media,profile,comment], (err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// updates all comments
router.put('/', (req,res) => {
    // Create insert query for new comment
    new_comment = "CALL update_comments()";
    // Execute the query to insert into the database
    con.query(new_comment,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// updates all comments
router.patch('/', (req,res) => {
    // Create insert query for new comment
    // Added a comment
    new_comment = "CALL update_comments()";
    // Execute the query to insert into the database
    con.query(new_comment,(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
});

// deletes all comments
router.delete('/', (req,res) => {
    // Create the query to delete all comments from the database
    delete_comments = "CALL delete_comments()";
    // Execute the query to delete from the database
    deleteComments(delete_comments);
});

// Grab specific comment by their id
router.get('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    // Create the query to get the specified comment from the database
    get_comment  = "call get_comment(?)";
    // Execute the query to pull from the database
    con.query(get_comment, [commentId],(err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});

// Updates the specified comment
router.put('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    console.log("comment updated via put with commentId: " + commentId);
    // Create the query to update the specified comment in the database
    update_comment = "CALL update_comment(?,?,?,?,?,?)";
    // Execute the update query
    updateComments(update_comment, commentId);
});

// Updates the specified comment
router.patch('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    console.log("comment updated via patch with commentId: " + commentId);
    // Create the query to update the specified comment in the database
    update_comment = "CALL update_comment(?,?,?,?,?,?)";
    // Execute the update query
    updateComments(update_comment, commentId);
});

// Deletes the specified comment
router.delete('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    console.log(" deleting comment with comment id: " + commentId);
    // Create the query to delete the specified comment from the database
    delete_comments = "CALL delete_comment(?)";
    // Execute the delete query
    deleteComments(delete_comments, commentId);
});

router.get('/all', (req,res) => {
    // Create the query to get all comments from the database
    get_comment_info_all = "CALL get_comment_info_all()";
    // Execute the query to pull from the database
    con.query(get_comment_info_all, (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});

router.get('/:like_info', (req, res) =>{
    comment_like_info = "CALL comment_like_info";

    con.query(comment_like_info ,(err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end;
    })
});

function deleteComments(delete_comments, commentId){
    if(commentId === undefined){
        con.query(delete_comments, (err, results) => {
            if (err) throw err;
            res.status(201).jsonp({results}).end();
        })
    }
    else{
        con.query(delete_comments, [commentId],(err, results) => {
            if (err) throw err;
            res.status(201).jsonp({msg:'comment deleted'}).end();
        })
    }
}

function updateComments(update_comment, commentId){
    con.query(update_comment,[commentId,poster,carve,media,profile,comment],(err, results) => {
        if (err) throw err;
        res.status(201).jsonp({results}).end();
    })
}

module.exports = router;