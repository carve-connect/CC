import axios from 'axios';
import { baseUrl } from './config';

class UserApi {
	// Returns user info based on the user Id passed in
	 static getUserInfo(userId) {
		return new Promise((resolve, reject) => {
			axios.get(`${baseUrl}/users/${userId}`)
				.then(res => {
					if(res.data.users[0][0]) {
						resolve(res.data.users[0][0]);
					} else {
						reject(Error("API Error"));
					}
				});
		});
	}


	// Logs out the user currently logged in
	static logoutUser(userId) {
	 	axios.get(`${baseUrl}/users/${userId}/logout`);
	}


	// Grabs all messages for a specific user
	static getUsersInbox(userId) {
	 	return new Promise((resolve, reject) => {
	 		axios.get(`${baseUrl}/users/${userId}/messages/inbox`)
				.then(res => {
					(res.data.messages) ? resolve(res.data.messages) : reject(Error("API Error"))
				});
		})
	}


	// Grabs all sent messages from a specific user
	static getUsersSents(userId) {
		return new Promise((resolve, reject) => {
			axios.get(`${baseUrl}/users/${userId}/messages/sent`)
				.then(res => {
					(res.data.results) ? resolve(res.data.results[0]) : reject(Error("API Error"))
				});
		})
	}


	// Returns all of users buddies
	static getUsersBuddies(userId) {
	 	return new Promise((resolve, reject) => {
			axios.get(`${baseUrl}/users/${userId}/follows/buddies`)
				.then(res => {
					(res.data.results) ? resolve(res.data.results[0]) : reject(Error("API Error"))
				});
		})
	}


	// Returns all venues that a user follows
	static getFollowingVenues(userId) {
	 	return new Promise((resolve, reject) => {
			axios.get(`${baseUrl}/users/${userId}/follows/venues`)
				.then((res) => {
					(res.data.results[0]) ? resolve(res.data.results[0]) : reject(Error("API Error"))
				});
		});
	}


}

export default UserApi;