import axios from 'axios';
import { baseUrl } from './config';

class FollowsApi {

	// Deletes a follow row based on the ids given in because we do not always have the follow_id
	static deleteFollow(id1, id2) {
		const obj = { userLoggedIn: id1, followerId: id2 };
		return new Promise((resolve, reject) => {
			axios.delete(`${baseUrl}/follows/ids`, { data: obj })
				.then(res => {
					(res.data.message.length > 0) ? resolve(res.data.message) : reject(Error("Api Error"));
				})
		})
	}
}

export default FollowsApi;