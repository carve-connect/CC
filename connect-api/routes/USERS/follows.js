var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');


//get /followed
router.get('/buddies/media', (req, res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_buddy_media(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

// Returns all venues followed by a specific user
router.get('/venues/media', (req, res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_venue_followed_media(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/media', (req, res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_followed_media(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

//get /followed
router.get('/buddies/carves', (req, res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_buddy_carves(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

//get /followed
router.get('/buddies/carves/made', (req, res) => {
    // Find all follows from database
    userId = req.params.userId;
    follow_list = "CALL get_buddy_carves(?)";
    con.query(follow_list, [userId], (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});

// Returns all venues followed by a specific user
router.get('/venues/carves', (req, res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_venue_followed_carves(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/carves', (req, res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_followed_carves(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/', (req,res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_user_followed(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
        console.log(results);
	})
});


// Creates a new follow
router.post('/', (req,res) => {
	const {user1, user2, ven, ty} = req.body;
	// The followname wasn't found in the database
	// Create insert query for new follow
	// Added a comment
	new_follow = "CALL add_follow(?,?,?,?)";
	// Execute the query to insert into the database
	con.query(new_follow,[user1, user2, ven, ty[0]], (err, results) => {
		if (err) throw err;
		res.status(201).jsonp({results}).end();
	})
});

// updates all follows
router.put('/', (req,res) => {
	// The followname wasn't found in the database
	// Create insert query for new follow
	// Added a comment
	new_follow = "CALL update_follows()";
	// Execute the query to insert into the database
	con.query(new_follow,(err, results) => {
		if (err) throw err;
		res.status(201).jsonp({results}).end();
	})
});

// updates all follows
router.patch('/', (req,res) => {
	// The followname wasn't found in the database
	// Create insert query for new follow
	// Added a comment
	new_follow = "CALL update_follows()";
	// Execute the query to insert into the database
	con.query(new_follow,(err, results) => {
		if (err) throw err;
		res.status(201).jsonp({results}).end();
	})
});

// Route takes in the venue id and the user_id in the body
// deletes all follows (Should be from specific user and not all of them)
router.delete('/', (req,res) => {
	delete_follows = "CALL delete_follows()";
	con.query(delete_follows, (err, results) => {
		if (err) throw err;
		res.status(201).jsonp({results}).end();
	})
});

//get /followed
router.get('/buddies', (req,res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL buddy_list(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

// Returns all venues followed by a specific user
router.get('/venues', (req,res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_venues_followed(?)";

	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});


// Grabs all follows from db; needs get_all_user_follows procedure
router.get('/followers', (req,res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_user_followers(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

// Grab specific follow by their id
router.get('/:followId', (req,res) => {
	const followId = req.params.followId;
	get_follow  = "call get_follow(?)";
	con.query(get_follow, [followId],(err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

// updates follow
router.put('/:followId', (req,res) => {
	const followId = req.params.followId;
	const {user1, user2, ven, ty} = req.body;
	update_follow = "CALL update_follow(?,?,?,?,?)";
	con.query(update_follow,[followId,user1, user2, ven, ty[0]],(err, results) => {
		if (err) throw err;
		res.status(201).jsonp({results}).end();
	})
});

// updates all follows
router.patch('/:followId', (req,res) => {
	const followId = req.params.followId;
	const {user1, user2, ven, ty} = req.body;
	update_follow = "CALL update_follow(?,?,?,?,?)";
	con.query(update_follow,[followId,user1, user2, ven, ty[0]],(err, results) => {
		if (err) throw err;
		res.status(201).jsonp({results}).end();
	})
});

// Deletes venue follow
router.delete('/venues', (req, res) => {
	const { user_id1, venue_id } = req.body;
	let sql = `DELETE FROM FOLLOWS WHERE user_id1=${user_id1} AND venue_id=${venue_id}`;
	con.query(sql, (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});

// Deletes venue follow
router.delete('/buddy', (req, res) => {
    const {user_id1, user_id2} = req.body;
    let sql = `DELETE FROM FOLLOWS WHERE (user_id1=${user_id1} AND user_id2=${user_id2}) or (user_id1=${user_id2} AND user_id2=${user_id1}) AND type = 'buddy'`;
    con.query(sql, (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});


// Deletes venue follow
router.delete('/following', (req, res) => {
    const {user_id1, user_id2} = req.body;
    let sql = `DELETE FROM FOLLOWS WHERE user_id1=${user_id1} AND user_id2=${user_id2} AND type = 'follow'`;
    con.query(sql, (err, results) => {
        if (err) throw err;
        res.status(200).jsonp({results}).end();
    })
});


// deletes follow
router.delete('/:followId', (req,res) => {
	const followId = req.params.followId;
	delete_follows = "CALL delete_follow(?)";
	con.query(delete_follows, [followId],(err, results) => {
		if (err) throw err;
		res.status(201).jsonp({msg:'follow deleted'}).end();
	})
});

// get /buddies/  returns buddy list for user procedure call => buddy_list(?) [userId]

//get /followers
router.get('/?', (req,res) => {
	// Find all follows from database
	userId = req.params.userId;
	follow_list = "CALL get_user_followers(?)";
	con.query(follow_list, [userId], (err, results) => {
		if (err) throw err;
		res.status(200).jsonp({results}).end();
	})
});


//put /follow ?venueId & userId

router.post('/buddies/:userId1', (req,res) => {
	// Find all users from database
	const userId = req.params.userId;
	const userId1 = req.params.userId1;
	add_buddy = "CALL add_buddy(?,?)";
	con.query(add_buddy, [userId,userId1],(err, results, fields) => {
		if (err) throw err;
		res.status(200).json({
			userfollows: results,
			msg: 'buddy added'
		})
	})
});


module.exports = router;