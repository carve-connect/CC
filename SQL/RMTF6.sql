#here it is...
use CCv6;

#Users

INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('frosty', 'abc1@email.net', 'password', 'Sean', 'Klinglesmith',
        'Chill bro whos down for anything, anywhere, anytime', 'SEAN', ('Photographer,Videographer,Drone Operator'),
        ('Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski'),
        ('Surf,Water Ski,Kayak,Wakeboard,Paddleboard,Parasail,Kite Surf'),
        ('Skateboard,BMX,Mountain Bike,Rock Climb,Cliff Dive,Parkour'), ('Sky Dive,Hang Glide,Base Jump,Air Race'));
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Cmart', 'abc2@email.net', 'password', 'Christian', 'Marcy', 'rad man who loves to shred', 'SnMb1', 'Athlete',
        'Downhill Ski', 'Water Ski', 'Skateboard', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('JRider', 'abc3@email.net', 'password', 'RJ', 'Boucher', 'pro dude who knows how to carve', 'Sn4',
        'Athlete,Pro Athlete', 'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'BMX', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('balthazar', 'abc4@email.net', 'password', 'Brandon', 'Wheeler', 'awesome bro who loves to shred the gnar',
        'Su1', 'Athlete', 'Snowboard', 'Surf,Paddleboard', 'Mountain Bike,Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Shred', 'abc5@email.net', 'password', 'Fred', 'Budde', 'Fan of sports and loves to take pictures', 'FRED',
        'Photographer,Fan', 'Downhill Ski', 'Water Ski', NULL, NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Iceman', 'abc6@email.net', 'password', 'Md', 'Monir', 'loves to film action sequences', 'Ph2', 'Videographer',
        'snowmobile', 'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dhruvp18', 'abc7@email.net', 'password', 'Dhruv', 'Patel', 'Timeless traveler', 'DHRUV',
        'Photographer,Videographer,Drone Operator', 'Snowboard', 'Surf,Paddleboard', 'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Andez', 'abc8@email.net', 'password', 'Dylan', 'Anderson', 'rad man who loves to shred', 'SkyDive1',
        'Athlete,Pro Athlete,Drone Operator', 'Downhill Ski', 'Water Ski', 'BMX', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('ProfMan', 'abc8@email.net', 'password', 'Dr.', 'Baliga', 'Awesome Professor', 'BALIGA',
        'Athlete,Pro Athlete,Drone Operator', 'Downhill Ski', 'Water Ski', NULL, 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman10', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!', 'SkyDive2 ',
        'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask11', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan12', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire, playboy philanthropist, what else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox13', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks14', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete', 'Downhill Ski',
        'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand15', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan16', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete', 'Snowboard',
        'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper17', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer', 'Downhill Ski',
        'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain18', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk, way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans19', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor, phsychologist, chef, people person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing20', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!', 'Su3 ',
        'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog21', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator22', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower23', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue24', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home', 'SkyDive2',
        'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel25', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot, current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski', 'BMX',
        'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow26', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf', 'Mountain Bike',
        'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman27', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne28', 'abc28@email.net', 'password', 'Arya', 'Stark', 'A girl is noone, except for a great snowborder',
        'Sn1', 'Athlete', 'Snowboard', 'Water Ski', 'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue29', 'user29@email.net', 'password', 'Pepper', 'Potts', 'catch me skydiving with my husband', 'Ph2',
        'Photographer', 'Downhill Ski', 'Surf', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored30', 'user30@email.net', 'password', 'Corvo', 'Attano', 'love to run around and jump off of things',
        'Su3', 'Athlete', 'snowmobile', 'Surf,Water Ski', 'BMX', 'Hang Glide');

# VENUES

INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Catamount', 'Hillsdale', 'NY',
        'Catamount, nestled in a picturesque bowl in the Berkshire Mountains, is a mountain for the entire family.',
        'SkRs1', 'Snowboard,Downhill Ski,Cross-Country Ski', NULL, 'Mountain Bike', NULL, 41.176399, -74.09256,
        'https://www.onthesnow.com/new-york/catamount-ski-ride-area/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Holiday Valley', 'Ellicotville', 'NY',
        'Holiday Valley has 53 trails marked 35 percent for beginners, 27 percent intermediates, and 38 percent advanced skiers.',
        'SkRs2', 'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 42.264314, -78.664821,
        'https://www.onthesnow.com/new-york/holiday-valley/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Whiteface Mountain', 'WIlmington', 'NY',
        'With the biggest vertical drop of the eastern ski resorts (3,429 feet), Whiteface, NY, offers 288 skiable acres serviced by 11 lifts, including one gondola.',
        'SkRs3', 'Snowboard,Downhill Ski,Cross-Country Ski', NULL, NULL, 'Hang Glide', 44.366984, -73.904448,
        'https://www.onthesnow.com/new-york/whiteface-mountain-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Belleayre Mountain', 'Highmount', 'NY',
        'Belleayre offers something for everybody, from skiing to snowboarding to cross-country skiing.', 'SkRs4',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 42.132086, -74.50558,
        'https://www.onthesnow.com/new-york/belleayre/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Gore Mountain', 'North Creek', 'NY',
        'Located in the Adirondacks, Gore Mountain is New York State’s largest ski and ride resort. Boasting a vertical drop of 2,537 feet and 446 accessible acres',
        'SkRs5', 'Snowboard,Downhill Ski,Cross-Country Ski', NULL, NULL, NULL, 43.67327, -74.007092,
        'https://www.onthesnow.com/new-york/gore-mountain/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Jack Frost', 'White Haven', 'PA', 'Cool resort in PA.', 'SkRs6', 'Snowboard,Downhill Ski', NULL, NULL, NULL,
        41.108388, -75.6515, 'https://www.onthesnow.com/pennsylvania/jack-frost/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Camelback Mountain', 'Tannersville', 'PA', 'Awesome ski resort in PA.', 'SkRs7',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 41.051092, -75.356211,
        'https://www.onthesnow.com/pennsylvania/camelback-mountain-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Campgaw Mountain', 'Mahwah', 'NJ', 'NJ ski resort, yes they exist.', 'SkRs8', 'Snowboard,Downhill Ski', NULL,
        NULL, NULL, 41.05656, -74.197295, 'https://www.onthesnow.com/new-jersey/campgaw-mountain/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mountain Creek Resort', 'Vernon', 'NJ', 'Another NJ ski resort, who knew.', 'SkRs6',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, 'Mountain Bike', NULL, 41.189767, 74.505371,
        'https://www.onthesnow.com/new-jersey/mountain-creek-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mount Snow', 'West Dover', 'VT', 'RJs favorite resort.', 'SkRs4', 'Snowboard,Downhill Ski', NULL, NULL, NULL,
        42.959741, -72.919972, 'https://www.onthesnow.com/vermont/mount-snow/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Killington Resort', 'Killington', 'VT', 'Ski resort in vermont.', 'SkRs1',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 43.617347, -72.799372,
        'https://www.onthesnow.com/vermont/killington-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Sundance Resort', 'Sundance', 'UT', 'Amazing ski resort in utah, Sean has been there.', 'SkRs2',
        'Snowboard,Downhill Ski', NULL, 'Rock Climb', 'Hang Glide,Base Jump', 40.393257, -111.586968,
        'https://www.onthesnow.com/utah/sundance/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Powder Mountain', 'Eden', 'UT', 'Amazing ski resort in utah, Sean has been there.', 'SkRs8',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, 'Hang Glide', 41.37759, -111.779676,
        'https://www.onthesnow.com/utah/powder-mountain/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Keystone', 'Keystone', 'CO', 'Ridiculous Ski Resort in Colorado.', 'SkRs5', 'Snowboard,Downhill Ski', NULL,
        NULL, NULL, 39.608136, -105.943562, 'https://www.onthesnow.com/colorado/keystone/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Aspen/ SNOWMASS', 'ASPEN', 'CO', 'High end ski resort that everyone knows of but cant afford.', 'SkRs1',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 39.205417, -106.947842,
        'https://www.onthesnow.com/colorado/aspen-snowmass/ski-resort.html');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Devil''s Tower', 'Devils Tower', 'WY', 'Universally known landmark.', 'DT', NULL, NULL, 'Rock Climb',
        'Base Jump', 44.588426, -104.698349, 'https://www.mountainproject.com/area/105714267/devils-tower');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Grand Teton', 'Alta', 'WY', 'Amazing mountain to climb. Beautiful scenery.', 'GT', NULL, NULL, 'Rock Climb',
        'Base Jump', 43.742851, -110.796967,
        'https://www.mountainproject.com/area/105802912/grand-teton-national-park');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mount Rainier', 'Mt Rainier', 'WA', 'Stands alone, majestically.', 'MR', NULL, NULL, 'Rock Climb', 'Base Jump',
        46.852101, -121.760366, 'https://www.mountainproject.com/area/105877031/mount-rainier');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mount Katahdin', 'Piscataquis', 'ME', 'Part of the applachian trail.', 'MK', NULL, NULL, 'Rock Climb', NULL,
        45.904011, -68.921694, 'https://www.mountainproject.com/area/105949051/katahdin');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Pikes Peak', 'Pikes Peak', 'CO', 'Why climb if you can drive or ride?', 'PP', NULL, NULL,
        'Mountain Bike,Rock Climb', 'Hang Glide,Base Jump', 38.840619, -105.042375,
        'https://www.mountainproject.com/area/106201866/pikes-peak');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Spring Lake Beach', 'Spring Lake', 'NJ', 'Some random NJ beach.', 'Be1', NULL, 'Surf,Wakeboard', NULL, NULL,
        40.151294, -74.021604, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Belmar Beach', 'Belmar', 'NJ', 'Some random NJ beach.', 'Be2', NULL, 'Surf,Kayak,Wakeboard,Parasail', NULL,
        NULL, 40.182549, -74.010354, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Avon Beach', 'Avon', 'NJ', 'Some random NJ beach.', 'Be3', NULL, 'Surf,Kayak,Wakeboard', NULL, NULL, 40.194072,
        -74.008168, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Manasquan Beach', 'Manasquan', 'NJ', 'Some random NJ beach.', 'Be1', NULL, 'Surf,Wakeboard,Parasail', NULL,
        NULL, 40.110715, -74.033019, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Manasquan inlet', 'Manasquan', 'NJ', 'Some random NJ beach.', 'Be2', NULL, 'Water Ski,Kayak,Paddleboard', NULL,
        NULL, 40.104929, -74.037292, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Seagirt Beach', 'Seagirt', 'NJ', 'Some random NJ beach.', 'Be3', NULL, 'Surf,Wakeboard', NULL, NULL, 40.135346,
        -74.026757, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Asburry Beach', 'Asburry', 'NJ', 'Some random NJ beach.', 'Be4', NULL, 'Surf,Wakeboard,Parasail', NULL, NULL,
        40.222815, -73.99849, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Waikiki Beach', 'Waikiki', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be1', NULL,
        'Surf,Water Ski', NULL, NULL, 21.276486, -157.827866,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Sunset beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be2', NULL, 'Surf,Wakeboard',
        NULL, 'Air Race', 21.674231, -158.040712,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Waimea Bay', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be3', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 21.640943, -158.063304,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ehukai Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be4', NULL, 'Surf,Wakeboard',
        NULL, NULL, 21.665847, -158.050612,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Haleiwa Alii Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be5', NULL,
        'Surf,Wakeboard,Parasail', 'Cliff Dive', NULL, 21.592923, -158.109451,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Haleiwa Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be1', NULL, 'Surf,Wakeboard',
        'Cliff Dive', NULL, 21.599308, -158.10369,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Chun''s Reef', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be2', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 21.623339, -158.081172,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ke Waena Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be3', NULL, 'Surf,Wakeboard',
        NULL, NULL, 21.660497, -158.056624,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Turtle Bay', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be4', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 21.705876, -157.996371,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Black''s Beach', 'San Diego', 'CA', 'Cali beach.', 'Be5', NULL, 'Surf,Wakeboard', NULL, NULL, 32.887505,
        -117.253329, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ocean City Beach', 'Ocean City', 'MD', 'Who goes to maryland to surf?', 'Be1', NULL, 'Surf,Wakeboard,Parasail',
        NULL, NULL, 38.33271, -75.0829, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Windansea Beach', 'San Diego', 'CA', 'Another Cali Beach.', 'Be2', NULL, 'Surf,Wakeboard', NULL, NULL,
        32.829889, -117.280952, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Cocoa Beach', 'Cape Canaveral', 'FL', 'Intergalactically famous beach in florida.', 'Be3', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 28.319259, -80.607689, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Lake Buena Vista', 'Orlando', 'FL', 'Disney famous lake.', 'Lk1', NULL,
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', NULL, NULL, 28.399563, -81.545967, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Lake Powell', 'Lake Powell', 'UT', 'Just how big is this thing. Great place to party.', 'Ka1', 'Snowmobile',
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', 'Rock Climb,Cliff Dive', 'Air Race', 37.029312, -111.326004,
        NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Greenwood Lake', 'Greenwood Lake', 'NY', 'Some lake in New York.', 'Lk2', NULL,
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', 'Rock Climb,Cliff Dive', 'Air Race', 41.213795, -74.301314,
        NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Lake Mead', 'Lake Mead', 'NV', 'Party central, not as big as powell though. Hoover dam anyone?', 'Lk3',
        'Snowmobile', 'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', 'Rock Climb,Cliff Dive', 'Air Race', 36.14439,
        -114.427312, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Union Lake', 'Millville', 'NJ', 'NJ lake, good times to be had.', 'Lk4', 'Snowmobile',
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', NULL, NULL, 39.412838, -75.060835, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Burnside Skate Park', 'Portland', 'OR', 'Bob''s Playgorund', 'Ska2', NULL, NULL, 'Skateboard,BMX,Parkour',
        NULL, 45.522946, -122.663655, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Skate Lab', 'Atlantic Beach', 'FL', 'Indoor jam sessions for days.', 'Ska1', NULL, NULL,
        'Skateboard,BMX,Parkour', NULL, 30.331846, -81.403374, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Denver Skate Park', 'Denver', 'CO', 'Fun in the sun.', 'SkPk1', NULL, NULL, 'Skateboard,BMX,Parkour', NULL,
        39.759566, -105.002511, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('David Armstrong Extreme Park', 'Lousiville', 'KY', 'Great place to skate.', 'Ska2', NULL, NULL,
        'Skateboard,BMX,Parkour', NULL, 38.257057, -85.740185, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Dreamland Skate Park', 'Lincoln City', 'OR', 'Amazing place to skate.', 'SkPk1', NULL, NULL,
        'Skateboard,BMX,Parkour', NULL, 44.982601, -124.0045, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ray''s MTB Park', 'Cleveland', 'OH', 'Awesome BMX track', 'BMXT1', NULL, NULL, 'BMX', NULL, 41.454896,
        -81.752677, 'www.raysmtb.com');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Chula Vista', 'San Diego', 'CA', 'Insane runs in the desert.', 'BMXT2', NULL, NULL, 'BMX', NULL, 32.630195,
        -116.937156, 'www.chulavistabmx.com');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Egg Harbor Township BMX Racing', 'EHT', 'NJ', 'Great BMX track', 'BMXT1', NULL, NULL, 'BMX', NULL, 39.368482,
        -74.626909, 'www.ehtbmxracing.org');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Orlando BMX', 'Orlando', 'FL', 'Great outdoor BMX track.', 'BMXT2', NULL, NULL, 'BMX', NULL, 28.558288,
        -81.443244, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('The Flow', 'Colombus', 'OH', 'Flowingly smooth BMX track', 'BMXT1', NULL, NULL, 'Skateboard,BMX,Parkour', NULL,
        39.955498, -83.107935, NULL);
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Pensylvania Skydiving Center', 'Hazleton', 'PA', 'Cant go wrong here.', 'AF1', NULL, NULL, NULL,
        'Sky Dive,Air Race', 40.988158, -75.992654, 'http://paskydive.com/');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Sky Dive Key West', 'Summerland Key', 'FL', 'Great views, good time.', 'SkyDive1', NULL, NULL, NULL,
        'Sky Dive,Air Race', 24.648312, -81.573498, 'https://skydivekeywest.com/');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Alaska SkyDive Center', 'Palmer', 'AK', 'Amazing experience.', 'SkyDive2', NULL, NULL, NULL,
        'Sky Dive,Air Race', 61.601329, -149.091718, 'http://alaskaskydivecenter.com/');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Skydive Hawaii', 'Waialua', 'HI', 'Beautiful views,  fun time.', 'AF1', NULL, NULL, NULL, 'Sky Dive,Air Race',
        21.578305, -158.182364, 'http://www.skydivehawaii.com/');
INSERT INTO VENUES(venue_name, city, state, about, picture, snow_sports, water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Skydive Zion', 'Hurricane', 'UT', 'Wow... Awesome time.', 'SkyDive1', NULL, NULL, NULL, 'Sky Dive,Air Race',
        37.141208, -113.304019, 'http://www.skydivezion.com/');

INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve1', 1, 1, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0,
        'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve2', 2, 6, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve3', 3, 6, 'looking for some downhill skiing', 'open', 6, 2, '2019-07-03', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve4', 4, 1, 'lets get some snowboarding in!', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve5', 5, 7, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve6', 5, 7, 'let''s have some fun on the slopes today!', 'buddy', 8, 4, '2019-03-12', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve7', 6, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve8', 7, 1, 'anyone wanna shed?', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve9', 8, 11, 'slopes are calling my name! join me!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve10', 9, 13, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve11', 13, 2, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve12', 13, 2, 'lets get some snowboarding in!', 'buddy', 8, 4, '2019-03-12', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve13', 14, 13, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve14', 15, 3, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve15', 16, 3, 'anyone wanna shed?', 'open', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve16', 17, 11, 'looking for some downhill skiing', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve17', 18, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve18', 19, 4, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve19', 20, 8, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve20', 21, 8, 'let''s have some fun on the slopes today!', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve21', 22, 10, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve22', 23, 12, 'trying to get a skiing group together, hmu!', 'buddy', 6, 2, '2019-07-03', 0,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve23', 24, 12, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve24', 25, 4, 'lets shred!', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve25', 26, 14, 'looking for some downhill skiing', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve26', 27, 14, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve27', 27, 5, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve28', 28, 5, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve29', 29, 15, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve30', 30, 15, 'who wants to sled?', 'buddy', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve31', 1, 21, 'waves are gonna be great!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve32', 2, 41, 'who''s down for some water skiing?', 'buddy', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve33', 3, 26, 'looking for some sweet barrels!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve34', 4, 21, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve35', 5, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve36', 5, 41, 'who''s down for some water skiing?', 'buddy', 3, 3, '2019-05-22', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve37', 6, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve38', 7, 43, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf, Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve39', 8, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve40', 9, 43, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve41', 10, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve42', 11, 41, 'calm day out there, lets get some kayaking in', 'buddy', 6, 2, '2019-07-03', 0, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve43', 11, 41, 'lets paddle arround for a bit, maybe we''ll see some dolphins', 'open', 5, 3, '2018-06-04',
        1, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve44', 12, 24, 'lets shred!', 'buddy', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve45', 13, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve46', 14, 22, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Parasail');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve47', 14, 21, 'lets shred!', 'open', 8, 2, '2019-08-19', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve48', 15, 27, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve49', 16, 27, 'lets shred!', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve50', 17, 26, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve51', 18, 28, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve52', 19, 28, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve53', 20, 22, 'waves are calling me!', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve54', 21, 29, 'lets shred!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve55', 22, 41, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve56', 23, 23, 'lets paddle out!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve57', 24, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve58', 25, 41, 'gonna have a great time', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve59', 26, 24, 'let''s hit the lineup', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve60', 27, 29, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve61', 28, 42, 'killer waves', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve62', 29, 23, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Wakeboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve63', 30, 26, 'barrel time', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve64', 1, 46, 'got a lot planned for this one', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve65', 2, 46, 'lets hit the sake park', 'open', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve66', 3, 47, 'get those bikes ready!', 'buddy', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve67', 4, 47, 'looking to shoot some cool parkour videos', 'open', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve68', 6, 48, 'got a lot planned for this one', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve69', 7, 48, 'get those boards ready, gonna have some fun', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve70', 7, 49, 'let''s get some good footage', 'buddy', 8, 4, '2019-03-12', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve71', 8, 49, 'lets ride, all are welcome', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve72', 10, 50, 'got a lot planned for this one', 'buddy', 6, 2, '2019-02-15', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve73', 10, 50, 'got a lot planned for this one', 'open', 5, 2, '2019-04-04', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve74', 11, 46, 'looking to shoot some cool parkour videos', 'buddy', 3, 3, '2019-05-22', 0, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve75', 12, 9, 'mounatin is gonna be fun, bring your bike', 'open', 6, 2, '2019-02-15', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve76', 12, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve77', 13, 48, 'do a kickflip! - tony hawk', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve78', 14, 49, 'got some cool stuff planned', 'buddy', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve79', 15, 32, 'bring a redbull and let''s do this!', 'open', 3, 3, '2019-05-22', 0, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve80', 16, 46, 'looking to shoot some cool parkour videos', 'buddy', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve81', 17, 51, 'lets ride, all are welcome', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve82', 18, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve83', 19, 47, 'got some cool stuff planned', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve84', 20, 42, 'looking for some good climbing', 'buddy', 5, 2, '2019-04-04', 1, 'Rock Climb');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve85', 21, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve86', 22, 32, 'let''s go jum off of some cliffs!', 'buddy', 5, 2, '2019-04-04', 1, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve87', 23, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve88', 24, 46, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve89', 25, 47, 'get those bikes ready!', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve90', 26, 9, 'get those bikes ready!', 'buddy', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve91', 28, 9, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve92', 29, 48, 'let''s shred!', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve93', 30, 48, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve94', 1, 56, 'who''s down for some sky diving?', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve95', 2, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve96', 3, 56, 'green light! go go go!', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve97', 4, 57, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve98', 4, 57, 'lets jump!', 'buddy', 8, 2, '2019-01-09', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve99', 8, 58, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve100', 9, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 3, 3, '2019-05-22', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve101', 9, 11, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve102', 10, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve103', 11, 58, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve104', 12, 59, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve105', 15, 11, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve106', 16, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve107', 17, 59, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve108', 18, 60, 'green light! go go go!', 'buddy', 8, 3, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve109', 19, 16, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve110', 20, 57, 'who''s down to air rae?', 'buddy', 8, 2, '2019-08-19', 0, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve111', 21, 18, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve112', 22, 60, 'lets jump!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve113', 23, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve114', 24, 58, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve115', 25, 58, 'who''s down for some sky diving?', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve116', 26, 18, 'been waiting for some good base jumping, join me!', 'buddy', 8, 2, '2019-08-19', 0,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve117', 27, 57, 'who''s down to air race?', 'open', 8, 4, '2019-03-12', 1, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve118', 29, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 4, '2019-03-11', 1,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve119', 29, 13, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve120', 30, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve121', 1, 1, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0,
        'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve122', 2, 6, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve123', 3, 6, 'looking for some downhill skiing', 'open', 6, 2, '2019-07-03', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve124', 4, 1, 'lets get some snowboarding in!', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve125', 5, 7, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve126', 5, 7, 'let''s have some fun on the slopes today!', 'buddy', 8, 4, '2019-03-12', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve127', 6, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve128', 7, 1, 'anyone wanna shed?', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve129', 8, 11, 'slopes are calling my name! join me!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve130', 9, 13, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve131', 13, 2, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve132', 13, 2, 'lets get some snowboarding in!', 'buddy', 8, 4, '2019-03-12', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve133', 14, 13, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve134', 15, 3, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve135', 16, 3, 'anyone wanna shed?', 'open', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve136', 17, 11, 'looking for some downhill skiing', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve137', 18, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve138', 19, 4, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve139', 20, 8, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve140', 21, 8, 'let''s have some fun on the slopes today!', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve141', 22, 10, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve142', 23, 12, 'trying to get a skiing group together, hmu!', 'buddy', 6, 2, '2019-07-03', 0,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve143', 24, 12, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve144', 25, 4, 'lets shred!', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve145', 26, 14, 'looking for some downhill skiing', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve146', 27, 14, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0,
        'Downhill Ski,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve147', 27, 5, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve148', 28, 5, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve149', 29, 15, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve150', 30, 15, 'who wants to sled?', 'buddy', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve151', 1, 21, 'waves are gonna be great!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve152', 2, 41, 'who''s down for some water skiing?', 'buddy', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve153', 3, 26, 'looking for some sweet barrels!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve154', 4, 21, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve155', 5, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve156', 5, 41, 'who''s down for some water skiing?', 'buddy', 3, 3, '2019-05-22', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve157', 6, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve158', 7, 43, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf, Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve159', 8, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve160', 9, 43, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve161', 10, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve162', 11, 41, 'calm day out there, lets get some kayaking in', 'buddy', 6, 2, '2019-07-03', 0, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve163', 11, 41, 'lets paddle arround for a bit, maybe we''ll see some dolphins', 'open', 5, 3, '2018-06-04',
        1, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve164', 12, 24, 'lets shred!', 'buddy', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve165', 13, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve166', 14, 22, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Parasail');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve167', 14, 21, 'lets shred!', 'open', 8, 2, '2019-08-19', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve168', 15, 27, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve169', 16, 27, 'lets shred!', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve170', 17, 26, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve171', 18, 28, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve172', 19, 28, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve173', 20, 22, 'waves are calling me!', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve174', 21, 29, 'lets shred!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve175', 22, 41, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve176', 23, 23, 'lets paddle out!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve177', 24, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve178', 25, 41, 'gonna have a great time', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve179', 26, 24, 'let''s hit the lineup', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve180', 27, 29, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve181', 28, 42, 'killer waves', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve182', 29, 23, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Wakeboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve183', 30, 26, 'barrel time', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve184', 1, 46, 'got a lot planned for this one', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve185', 2, 46, 'lets hit the sake park', 'open', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve186', 3, 47, 'get those bikes ready!', 'buddy', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve187', 4, 47, 'looking to shoot some cool parkour videos', 'open', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve188', 6, 48, 'got a lot planned for this one', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve189', 7, 48, 'get those boards ready, gonna have some fun', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve190', 7, 49, 'let''s get some good footage', 'buddy', 8, 4, '2019-03-12', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve191', 8, 49, 'lets ride, all are welcome', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve192', 10, 50, 'got a lot planned for this one', 'buddy', 6, 2, '2019-02-15', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve193', 10, 50, 'got a lot planned for this one', 'open', 5, 2, '2019-04-04', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve194', 11, 46, 'looking to shoot some cool parkour videos', 'buddy', 3, 3, '2019-05-22', 0, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve195', 12, 9, 'mounatin is gonna be fun, bring your bike', 'open', 6, 2, '2019-02-15', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve196', 12, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve197', 13, 48, 'do a kickflip! - tony hawk', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve198', 14, 49, 'got some cool stuff planned', 'buddy', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve199', 15, 32, 'bring a redbull and let''s do this!', 'open', 3, 3, '2019-05-22', 0, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve200', 16, 46, 'looking to shoot some cool parkour videos', 'buddy', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve201', 17, 51, 'lets ride, all are welcome', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve202', 18, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve203', 19, 47, 'got some cool stuff planned', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve204', 20, 42, 'looking for some good climbing', 'buddy', 5, 2, '2019-04-04', 1, 'Rock Climb');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve205', 21, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve206', 22, 32, 'let''s go jum off of some cliffs!', 'buddy', 5, 2, '2019-04-04', 1, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve207', 23, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve208', 24, 46, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve209', 25, 47, 'get those bikes ready!', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve210', 26, 9, 'get those bikes ready!', 'buddy', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve211', 28, 9, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve212', 29, 48, 'let''s shred!', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve213', 30, 48, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve214', 1, 56, 'who''s down for some sky diving?', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve215', 2, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve216', 3, 56, 'green light! go go go!', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve217', 4, 57, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve218', 4, 57, 'lets jump!', 'buddy', 8, 2, '2019-01-09', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve219', 8, 58, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve220', 9, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 3, 3, '2019-05-22', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve221', 9, 11, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve222', 10, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve223', 11, 58, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve224', 12, 59, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve225', 15, 11, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve226', 16, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve227', 17, 59, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve228', 18, 60, 'green light! go go go!', 'buddy', 8, 3, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve229', 19, 16, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve230', 20, 57, 'who''s down to air rae?', 'buddy', 8, 2, '2019-08-19', 0, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve231', 21, 18, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve232', 22, 60, 'lets jump!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve233', 23, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve234', 24, 58, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve235', 25, 58, 'who''s down for some sky diving?', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve236', 26, 18, 'been waiting for some good base jumping, join me!', 'buddy', 8, 2, '2019-08-19', 0,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve237', 27, 57, 'who''s down to air race?', 'open', 8, 4, '2019-03-12', 1, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve238', 29, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 4, '2019-03-11', 1,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve239', 29, 13, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve240', 30, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');
