-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 10:26 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11
create DATABASE litrealty;
use litrealty;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `litrealty`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE IF NOT EXISTS `agents` (
  `agentId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`agentId`),
  KEY `agentId` (`agentId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agentId`, `name`, `phone`, `fax`, `email`, `username`, `password`) VALUES
(1, 'Sue Roberts', '555-1234', '555-9876', 'sue@homesellers.com', 'Sue.Roberts', 'suepass'),
(2, 'Natasha Watkins', '555-1357', '555-9876', 'tasha@homesellers.com', 'Natasha.Watkins', 'natashapass'),
(3, 'Chris Clarkson', '555-2468', '555-6767', 'chris@homesellers.com', 'Chris.Clarkson', 'chrispass'),
(4, 'Laura Blain', '555-9898', '555-6767', 'laura@homesellers.com', 'Laura.Blain', 'laurapass'),
(5, 'Dave Lindale', '555-8833', '555-9876', 'dave@homesellers.com', 'Dave.Lindale', 'davepass');

-- --------------------------------------------------------

--
-- Table structure for table `garagetypes`
--

CREATE TABLE IF NOT EXISTS `garagetypes` (
  `garageId` int(11) NOT NULL AUTO_INCREMENT,
  `gType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`garageId`),
  KEY `garageId` (`garageId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `garagetypes`
--

INSERT INTO `garagetypes` (`garageId`, `gType`) VALUES
(1, 'attached'),
(2, 'detached'),
(3, 'carport');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `listingNum` int(11) DEFAULT '0',
  `styleId` int(11) DEFAULT '0',
  `typeId` int(11) DEFAULT '0',
  `bedrooms` int(11) DEFAULT '0',
  `bathrooms` float DEFAULT '0',
  `squarefeet` int(11) DEFAULT '0',
  `berRating` varchar(2) NOT NULL,
  `description` text,
  `lotsize` varchar(25) DEFAULT NULL,
  `garagesize` tinyint(4) DEFAULT '0',
  `garageId` int(11) DEFAULT '0',
  `agentId` int(11) DEFAULT '0',
  `photo` varchar(50) DEFAULT NULL,
  `price` double DEFAULT '0',
  `dateAdded` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `listingNum` (`listingNum`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `street`, `city`, `listingNum`, `styleId`, `typeId`, `bedrooms`, `bathrooms`, `squarefeet`, `berRating`, `description`, `lotsize`, `garagesize`, `garageId`, `agentId`, `photo`, `price`, `dateAdded`) VALUES
(9, '34 Ferndale, Ennis Road', 'Limerick', 443499, 2, 2, 4, 1.5, 1100, 'A3', 'Located in a popular and mature residential estate. No 34 is a four bed family home that has been beautifully maintained by its current owners, who have achieved a desirable and modern finish throughout the home. Ferndale is an excellent location with various amenities both social & essential at your doorstep!! Limerick City is less than a 10 minute drive. There is also easy access to the Motorway with links to Dublin, Cork, Galway and Shannon airport. Viewing is highly recommended as soon as possible. The property itself is beautifully presented from start to finish. On entering the property you are welcomed by a spacious and bright entrance hall that has been tiled throughout and contains a downstairs bathroom. To the Left is the family room / playroom. The living room is to the right, with double doors leading through to the kitchen/dining room at the end of the hall. The living room is presented beautifully overlooking the front of the property, featuring an attractive open fireplace and wood floors. Through French doors from the living room is the kitchen/dining room, tiled throughout with a fully fitted kitchen. Sliding doors provide plenty of extra light, in addition to access to the garden. Off the kitchen is a spacious utility with access to the rear garden.', '20x45', 1, 1, 3, '443499.jpg', 82000, '2016-08-19'),
(10, '35 Na Cluainte ', 'Portarlington', 141136, 2, 2, 3, 2, 1700, 'B2', 'Ideal for first time buyer/investor.This three bedroom semi detached property is located in quiet Na Cluainte estate which is off the Tullamore Road, close to GAA pitch, schools, church & walking distance to town centre. Viewing Highly Recommended.', '70x250', 2, 1, 1, '141136.jpg', 203500, '2016-09-12'),
(11, '1 Kimberley Villas, Millitary Hill', 'Cork', 598495, 5, 1, 4, 4, 1800, 'F', 'The property is nestled away half way up Military Hill on a south facing site that extends onto a rear access point off Alexandra road. Here you will find a double garage entrance and workshop providing independent access. The property was extended c. 2008 to provide a spacious kitchen/dining area with utility and guest WC.1 Kimberley Villas is ideally located within 10 minutes walk of Cork city and has all of St Luke'' s amenities on its doorstep. Don''t delay, contact us today about this exciting market offering.', '60x120', 2, 2, 4, '598495.jpg', 249900, '2016-09-19'),
(12, '8 Ashwood, Seacrest, Shangort Road, Knocknacarra', 'Galway', 128365, 1, 1, 2, 1, 1200, 'C1', 'A wonderful 2 bedroom semi detached bungalow located family in one of Knocknacarra''s most sought after residential addresses. The property is ideally located in the premier residential development of Ashwwood, Seacrest and is accessed off the Shangort Road in Knocknacarra. No 8 Ashwood is situated in a quite traffic free cul de sac within the development. The property is maintained in excellent condition throughout and presented in turn key condition. The property comprises of a small entrance porch, an entrance hall, lounge room with feature fireplace, a main bathroom, open plan kitchen & dining room adn 2 double bedrooms with master en suite. Oil fired central heating, double glazing and a wonderful private rear garden with side entrance are but a mere sample of the features on offer throughout this wonderful home. The property is also found on an excellent road, bus & transport network system bringing all of Galways amenities within easy reach. Located within moments of Joyces Supermarket, local schools, Knocknacarra church, Salthill Village, Barna Village and a host sports & recreational facilities. This home comes highly recommended for viewing and is guaranteed not to disappoint.', '60x90', 1, 1, 4, '128365.jpg', 93900, '2016-08-11'),
(13, '31 Cnoc An Oir, Letteragh Road, Rahoon', 'Galway', 941895, 3, 1, 2, 1.5, 1300, 'C1', 'This three bed semi detached home was built in 1998 and is in good decorative order throughout. Conveniently located, Cnoc an Oir is within striking distance of Knocknacarra, Salthill & Newcastle with easy access to all the services and amenities that each area has to offer. The city centre is approximately 1.5 miles away.\n\nNo. 31 offers bright spacious accommodation throughout. On the ground floor there is a large living room to the front with kitchen/dining room and utility to the back, the accommodation is complete on this level with a guest toilet. Upstairs benefits from having three bedrooms, one en suite and a main bathroom. There is off street parking to the front, a side entrance and a west facing rear garden.\n\nThis property is likely to create good interest due to its location, style and price. Ideal for a first time buyer looking to get on the property ladder or an investor due to its convenient location and good rental potential. ', '60x120', 0, 4, 2, '941895.jpg', 89900, '2016-08-15'),
(14, '165 Ivy Exchange, Parnell Street', 'Dublin 1', 387190, 10, 1, 3, 2, 1800, 'B2', 'No 165 Ivy Exchange is a bright and spacious three bedroom work/live unit located in this secure, Cosgrave-built development. The complex is arranged in three blocks overlooking mature and landscaped communal courtyard gardens. The attractive communal area is complete with water feature and seating, providing a tranquil setting within an urban environment.\n', '70x200', 2, 2, 1, '387190.jpg', 178900, '2016-09-12'),
(15, '51 Seville Lawns, Margaretsfields, Callan Road', 'Kilkenny', 727218, 1, 1, 5, 2.5, 2100, 'G', 'Property Partners Buggy are delighted to bring to the market this three bedroom duplex property. The property is located just one mile from Kilkenny City Centre in an area known as Margaretsfields. This residence is in excellent condition for sale and would ideally suit an owner occupier or investor alike. Viewing is strongly recommended.', '70x140', 2, 2, 5, '727218.jpg', 159900, '2016-08-22'),
(16, '11 Thomas Street', 'Waterford', 727213, 5, 1, 3, 2, 1800, 'D2', 'Thomas Street is located off Merchants Quay which has a number of shops, bars and restaurants. The property is five minutes walk from Waterford city centre, Plunkett Station, Bus Áras and Aldi Supermarket.\n\nThe property is currently occupied and has a good rental yield with further potential. ', '70x110', 1, 2, 4, '727213.jpg', 99900, '2016-08-09'),
(17, 'St Annes Road, Nr. McSwiney Villas, Gurranabraher', 'Cork', 197681, 5, 1, 3, 1.5, 1650, 'F', 'This two bedroom mid terrace extended property is ideally located at 29 St. Annes Road, just off McSwiney Villas, close to City Centre It is within a few minutes walking distance of Blarney St., Shandon St., and the North Main st. Ideal starter home or investment property.The property stands on an elevated site which commands fantastic views of the City.\nThis property is priced to sell. Early viewing is recommended.', '100x110', 2, 1, 1, '197681.jpg', 159500, '2016-09-07'),
(18, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 11', 523986, 10, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli''s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 2, 1, '523986.jpg', 116900, '2016-09-19'),
(19, '10 Marian Place, Bennettsbridge', 'Kilkenny', 778954, 5, 1, 2, 1, 950, 'A3', 'The house is at the end of the street offering a stunning front and rear garden. Marian Place is just a minutes'' walk to the village of Bennetsbridge.\n\nThe House has 3 good sized bedrooms, Kitchen/Living Room, Utility and Bathroom.\n\nThe garden is surprisingly large that extends from the front to the very end of the site. As you enter the back garden there is patio area. the remaining garden is lawned with mature trees at the end. There is an archway that leads into a private area in the garden.\nThere is a built in dog run and shed.', '80x100', 1, 1, 3, '778954.jpg', 106900, '2016-11-14'),
(20, '6 Ashbrook Lawn, Ennis Road', 'Limerick', 377190, 2, 1, 4, 2, 2100, 'B2', 'This is a fine upstanding 4 bedroom semi detached property in Ashbrook, Ennis Road. All of the necessary component parts are in place to have a very comfortable family home in one of Limericks most popular residential areas. You are within comfortable walking distance of all necessary amenities of both a social, sporting and educational nature. There is a large green area almost directly in front of the property ensuring safe play from traffic and also the rear garden is South facing ensuring a plentiful supply of daylight and sunlight for those seeking relaxation to the rear of the property.', '70x200', 0, 4, 1, '377190.jpg', 179000, '2016-09-26'),
(21, '5 Donnybrook Close, Donnybrook', 'Dublin 8', 368089, 2, 1, 4, 1.5, 1800, 'C3', 'The property is built c.1989 and enjoys a particularly bright and well-appointed internal layout with emphasis being placed on space and light. Well maintained over the years the spacious interior offers great scope for the new purchaser to further enhance in creating the perfect town residence particularly ideal for down sizers or those simply looking for a well located and easily maintained home. A storm porch leads to the hall door which opens to the inviting hallway. A clever and effective design feature is the internal window from the hall through to the living room which draws the eye immediately to this gracious reception room complete with marble fireplace. The living room in turn has access to the rear patio area and garden via two sliding doors and also opens through to the dining room to the front of the house via glass panelled double doors. The kitchen is located off the living room and is bright with a range of fitted Siematic wall and floor units incorporating glass display cabinets, gold effect fitted towel rail, door knobs, recessed lighting, integrated appliances and tiled floor. The kitchen opens out to a carpeted tri-aspect bay enjoying the perfect orientation for capturing light throughout the day. It also provides a choice position for a dining table and chairs taking full advantage of the view of the delightful rear garden. There is a utility off the kitchen with access to the side passage. There is also a guest w.c. positioned off the hall.Located off the Stillorgan Road, on route into town, the driveway to this exclusive cul-de-sac is positioned between Airfield Park and Beaver Row. It is within walking distance of Donnybrook Village with its boutiques, selection of coffee shops and speciality food shops. This property is located truly in the heart of Dublin 4 with RTE Studios, Donnybrook Rugby Stadium, David Lloyd Riverview, UCD Belfield Campus, The Merrion SC and St Vincent`s Hospital literally all within easy walking distance. Transport is readily available with direct bus routes in and out of town.', '70x120', 1, 2, 5, '368089.jpg', 185900, '2016-09-30'),
(22, '65 Sarsfield Terrace, Off Richmond Hill', 'Cork', 132927, 2, 5, 5, 1.5, 1750, 'D1', 'Quality 10-year old home in a great location. Corner lot with plenty of space. Large two-tiered deck and inground pool.', '100x100', 2, 1, 2, '132927.jpg', 132900, '2016-09-14'),
(23, '36 Bulfin Road, Inchicore', 'Dublin 8', 493498, 5, 1, 3, 2, 1575, 'E1', 'Beautiful three bedroom mid terrace family home, with generous garden and west facing orientation. The house enjoys an excellent situation set back from the Bulfin Road. To the front of the house is a well maintained garden, which could easily be modified to accommodate off street parking. On entering there is a wide hallway with a living room to the right hand side. This is a bright room with a feature fireplace and solid wooden floors. Further down the hallway is a second living room, which is a generous space that looks out to an attractive back garden. At the end of the hallway is a kitchen extension which accommodates a dining space and access the back garden. The back garden is beautifully maintained with evergreen trees providing privacy. The house is well located between Inchicore and Kilmainham Villages. Both villages are a hive of activity with coffees shops, bakeries and convenience stores. The house is well served by public transport; with the Goldenbridge LUAS stop only a five minute walk away and a Dublin Bike station down the road.', '80x110', 2, 1, 5, '493498.jpg', 139900, '2016-06-16'),
(24, '4 Portobello Road, Portobello', 'Dublin 8', 335965, 4, 1, 3, 1.5, 1900, '0', 'This house has recently undergone extension renovations to restore this property into a charming yet modern abode in this popular area. Portobello Road is an attractive terrace of houses sitting next to Dublin''s Grand Canal offering beautifully scenic surroundings while being within a short stroll of the city centre.The property benefits from an open plan design of living space and kitchen, that neatly connect to the outside courtyard via floor to ceiling windows and sliding door. There is also an abundance of on street permit parking available to the front of the house. The area boasts easy access to many services and amenities including St. Stephen''s Green, Grafton Street, Trinity College Dublin, Merrion Square, Royal College of Surgeons Ireland and Griffith College Dublin. There is a great selection of cafés and restaurants in the area such as Lennox Café Bistro, The Cake Café, Locks Brasserie and the newly opened Sister Sadie café on Harrington Street. The location is well serviced by public transport with a variety of bus routes servicing the area and the LUAS within a 5 minute walk.', '80x110', 2, 1, 3, '335965.jpg', 145900, '2016-09-20'),
(25, '31 Northumberland Road, Ballsbridge', 'Dublin 4', 854600, 8, 1, 5, 2.5, 2500, 'A3', 'No 31 Northumberland Road is a stunning family home which offers gracious and well laid out accommodation. The property enjoys a prime position well set back from the road and benefits from off-street parking to the front and a private low maintenance garden to the rear.Nothumberland Road is perfectly located in the heart of Dublin 4. The villages of Ballsbridge and Donnybrook are only a short walk away with their excellent selection of trenty boutiques, There are a wide range of recreational amenities to include Herbert Park, the RDS Show grounds, the Aviva Stadium and Fitzwilliam Lawn Tennis Club to name but a few. The area is exceptionally well served by schools at all primary, secondary and post primary levels and include St Conleth`s College, St Michael`s College, Loreto College St Stephen`s Green, UCD and Trinity College. The city`s Central Business Districts Merrion Square, Fitzwilliam Square and St Stephens Green are also within walking distance.Local transport links include regular bus services from Northumberland Road and the DART stop at Barrow Street ensuring quick and easy access to the coastal suburbs. TheAircoach stop in Ballsbridge provides a direct link to Dublin Airport.', '120x150', 3, 1, 1, '854600.jpg', 2900000, '2016-10-11'),
(26, '56 Aisling Heights, Raheen', 'Limerick', 466794, 2, 1, 4, 1.5, 1775, 'C2', 'Convenience is the name of this home''s game. Close to work and fun. Maintenance free exterior and updated interior. Move-in ready.', '120x150', 2, 1, 3, '466794.jpg', 139500, '0000-00-00'),
(27, 'The Cresent, Kilminchy', 'Portlaoise', 141036, 2, 2, 4, 2, 1400, 'B1', 'LIT Realty is pleased to welcome this property to the sales market. This family home is located with walking distance to all amenities. This property comprises of four bedrooms (3 double rooms) master bedroom with ensuite, large family bathroom, kitchen, dining room & sitting room to the front of the property. Please call to arrange an appointment. ', '60x60', 2, 1, 4, '141036.jpg', 159900, '0000-00-00'),
(29, '31 Friar Street', 'Cork', 424375, 2, 1, 4, 2, 2100, 'G', 'Looking for a gem of a property in Cork City Centre, where you can just move in and hang your hat ? Well look no more !! No. 31 Friar Street is a superbly presented and recently renovated two bedroom town house with a host of tasteful extras including top quality joinery finish, modern fitted kitchen and two double bedrooms each with their own en suite bathroom. ', '150x200', 3, 2, 2, '424375.jpg', 162900, '0000-00-00'),
(30, '27 Fortwilliam Demesne, Fortwilliam', 'Belfast', 491686, 3, 1, 3, 2, 1500, 'F', 'Great location close to Belfast City Centre. Leading schools all within the catchment area of the development. Located off the Antrim Road and just off Fortwilliam Park, we present to the market 27 Fortwilliam Demesne which is an immaculately presented detached four-bedroom property. This exclusive development was constructed in approx. 2006 and will be of instant appeal to both young professionals and families alike. The property is situated within a quiet area offering high levels of privacy. Sales in this development are few and far between making no.27 a must see for any house hunters looking in the BT15 locality.', '200x100', 2, 1, 5, '491686.jpg', 119900, '0000-00-00'),
(31, '10 Bloomfield, Monaleen', 'Limerick', 664622, 3, 1, 2, 1, 975, 'A2', 'A truly superb well laid out and beautifully maintained first floor apartment situated in this magnificent residential location immediately adjacent to The Newtown Shopping Centre, Castletroy College and Monaleen National School. Inspection very highly recommended.', '70x100', 1, 1, 1, '664622.jpg', 125900, '0000-00-00'),
(7, '33 Beaumont Road, Beaumont', 'Dublin 9', 281903, 2, 3, 4, 0, 3800, 'B3', 'This property has been well maintained and is in lovely condition throughout. This property has been substantially extended to give four bedrooms with the attic also converted to give an extra two rooms making this very large family home. There is a large driveway to the front giving ample carparking. Beaumont Road is located in a lovely residential area close to Beaumont Hospital, Omni Park shopping centre, DCU and is within easy access of Dublin city centre, M50, M1 and the airport. There are many schools and recreational facilities close at hand.', '80x120', 0, 4, 5, '281903.jpg', 599900, '2016-11-07'),
(8, '4 Tegan Court, Screggan', 'Tullamore', 490686, 3, 1, 2, 1, 1990, 'B2', 'This superb detached five bedroomed family home located in this popular sought after development. The property enjoys a lovely private position and outlook within the development being in a quiet cul de sac and is conveniently located within walking distance of all the amenities of Mucklagh village including school. The accommodation provides excellent space for family living.', '85x150', 0, 4, 3, '490686.jpg', 350000, '2016-06-23'),
(6, '31 Francis Terrace', 'Kilkenny', 288644, 5, 1, 3, 1, 1300, 'A3', 'A five minute stroll will take you from the front door of No 31 Francis Terrace, to the High Street of the city. How good a location is that! No 31 Francis Terrace is located off the Gaol Road and is tucked away in a cul de sac, with a green space to its front and ample parking also. There is both side access and rear access to the house. The location is ''king'' when it comes to this type of homes and being able to walk to all the city''s amenities, is a massive plus. The long back garden is south facing and experiences full sun, it offers huge potential to extend and develop as well as being a safe play area. The location is known for being a quiet and established place to live, with long term residents both first and second generation residing there. Viewing these homes is the only way to truly appreciate the potential. ', '120x150', 0, 4, 3, '288644.jpg', 103900, '2016-06-22'),
(4, '18 Nicholas Street', 'Limerick', 503986, 2, 1, 4, 1.5, 1900, 'B3', 'This property comes to the market in turn key condition. It has been decorated to a very high standard with magnificent views over the River Shannon and the Curraghgower falls. This property would make an ideal home and boasts many design features with a balcony off the main open plan kit/din/livingroom area and another off the upstairs bedroom giving commanding views. It located in the historic area of the city and within a five minute walk to the centre of Limerick City and all its amenities. The ground floor also works as a self-contained apartment on the ground floor having its own door access. Private secure gated parking to rear. GFCH, mains water and sewage and double glazed windows. Private rear garden with rear access and stairs up to overhead patio and balcony. Carpets, curtains, blinds, light fittings & appliances included. Viewing of this super home is highly recommended.', '70x125', 0, 4, 1, '503986.jpg', 109900, '2016-11-03'),
(5, '79 Hollybrook Grove, Clontarf', 'Dublin 3', 498495, 5, 1, 3, 1, 1900, 'A3', '79 Hollybrook Grove is a mature and deceptively spacious three bedroom family home located within minutes of the seafront just off Clontarf Road. While in need of some modernisation this superb home offers an astute purchaser an ideal canvas to create their dream home. The house has a large sunny rear garden and also the added bonus of side access. Internally the accommodation comprises a hallway with under stairs storage there is a wonderful living room with feature bay window and fireplace with gas inset fire. The kitchen/breakfast room is fitted with wall and floor units and provides ample dining space, there is access to covered passage that leads to the rear garden. Upstairs there are three bedrooms, two double bedrooms and a generous single bedroom. A family bathroom completes the accommodation. There is oil fired central heating, but gas is connected to the house and the majority of windows are double glazed. Outside the front garden is bordered with mature hedging and a driveway provides off street parking. Shared pedestrian access leads to the rear garden. The sunny, mature and private rear garden is bigger than one would expect and is laid in lawn. There is a large block built shed and it is one of the very few houses with a garage with access to a laneway to the rear, which ensures easy access onto the Howth Road. The location of Hollybrook Grove is second to none, close to the coast road and promenade which is ideal for those who enjoy walking or cycling. It is a quiet cul de sac located behind Clontarf Garda station. There are a host of local shops, excellent schools and numerous sporting and recreational amenities in the immediate vicinity. The very frequent 130 Bus route is 2 minutes'' walk on the seafront and Clontarf DART station is within a 5 minute walk. Westwood Sports club and Fairview park are two noteworthy amenities very close to this fine family home.', '120x130', 2, 2, 1, '498495.jpg', 123900, '2016-06-02'),
(3, '12 Killard, Kilteragh, Dooradoyle', 'Limerick', 182625, 2, 2, 6, 4, 2500, 'C2', 'We are delighted to bring this spacious semi-detached family home to the market. No 12 Killard is beautifully presented family home and benefits from a delightful landscaped back garden. It is very well-proportioned and comes to the market in turn-key condition. It is an ideal purchase for any first time buyer or family. Alternatively, the property could be a lucrative investment. Viewing of this well presented family home is recommended without delay. Kilteragh is so well located off the main Dooradoyle Road within walking distance of Crescent Shopping Centre, Crescent Comprehensive school and many sports and leisure facilities. The Regional Hospital is also within easy striking distance. Limerick city with its many facilities is also only approx. 4kms away with regular bus routes. ', '80x120', 1, 2, 4, '182625.jpg', 149000, '2016-09-07'),
(32, '12 Mount Rochfort Close', 'Co. Dublin', 854605, 8, 1, 4, 1.5, 2000, 'B2', 'Hardwood trim throughout. This is a real gem. Three-seasons back porch, large yard, finished basement, and third-floor office make this a winner!', '80x120', 1, 2, 2, '854605.jpg', 279900, '0000-00-00'),
(2, '26 Lawrence Hill', 'Derry', 598795, 5, 1, 7, 4, 2500, '0', 'This elegant red-brick terrace house, dating from the early 20th century, has many original period features including floorings, decorative plasterwork, staircases, woodwork and fireplaces. While the property is currently equipped and licensed for multiple occupation, and provides an excellent opportunity for an investor in the rental market, it would take only a nominal amount of work to turn it back into a beautiful and stylish family home. Lawrence Hill is a much sought-after quiet residential area within easy walking distance of the city centre, and adjacent to the University of Ulster''s Magee College campus.', '80x120', 2, 2, 2, '598795.jpg', 129900, '2016-10-05'),
(1, '88 Lagmore Glen', 'Befast', 784571, 1, 2, 3, 2, 1900, '', 'Lovely home in a great neighborhood. Plenty of space. Private back yard. With your design flair, this could be your showpiece home.', '80x110', 1, 1, 2, '784571.jpg', 200800, '2016-11-01'),
(28, '46 Newtown Park, Annacotty', 'Limerick', 874524, 1, 2, 3, 2, 780, 'A3', 'No. 46 Newtown Park is a stunning three bed duplex townhouse offering style and light throughout. The space on offer in this property is exceptional and is replicated throughout both floors. Enjoying an unbeatable cul de sac location situated within a small exclusive enclave of mature residential properties, which offers a wonderful peaceful setting, yet is within striking distance of a wealth of amenities. Newtown Park is a particularly well maintained development and creates a wonderful first impression as the grounds and complex are beautifully presented throughout. The property further benefits from off street allocated parking.Newtown Park is nestled in the surroundings of beautifully landscaped gardens and large open green areas. The development comprises a mix of superbly designed and exceptionally spacious family homes, with duplex and ground level apartments to the rear. Newtown Shopping Centre, which includes a Mace, a hairdresser, bar, restaurants and a pharmacy is just around the corner as is the Crescent College (secondary). The University of Limerick and access to M7 is a short drive away.All in all, No 46 is sure to appeal to many a discerning buyer from first time buyers, professionals, to astute investors seeking a strong rental income, with a minimal undertaking of time and effort.', '85x80', 3, 2, 2, '874524.jpg', 180000, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `propertytypes`
--

CREATE TABLE IF NOT EXISTS `propertytypes` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `pType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`typeId`),
  KEY `typeId` (`typeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `propertytypes`
--

INSERT INTO `propertytypes` (`typeId`, `pType`) VALUES
(1, 'Residential-single'),
(2, 'Residential-multi'),
(3, 'Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE IF NOT EXISTS `styles` (
  `styleId` int(11) NOT NULL AUTO_INCREMENT,
  `pStyle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`styleId`),
  KEY `styleId` (`styleId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`styleId`, `pStyle`) VALUES
(1, 'Bungalow'),
(2, 'Semi Detached'),
(3, 'Detached '),
(4, 'Cottage'),
(5, 'Terrace'),
(8, 'Duplex'),
(9, 'Condo'),
(10, 'Apartment'),
(11, 'Other');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
