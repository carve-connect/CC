import { baseUrl } from './config';
import axios from "axios";

class VenueApi {

	static getVenueInfo(venueId) {
		return new Promise((resolve, reject) => {
			axios.get(`${baseUrl}/venues/${venueId}`)
				.then(res => {
					if(res.data.venues[0]) {
						resolve(res.data.venues[0][0]);
					} else {
						reject(Error("API Error"));
					}
				});
		});
	}

}

export default VenueApi;