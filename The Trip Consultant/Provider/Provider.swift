import Foundation

class Provider {
  
  static let shared: Provider = Provider()
  
  private init() {}
  
  private let places: [Place] = [
    Place(id: 0, name: "Meteora", picture: "meteora", description: "Monastery complex.", country: "Greece", ratings: 2.7, reviews: 800, comment: "Spiritual retreat!", latitude: 39.713, longitude: 21.630),
    Place(id: 1, name: "Eiffel Tower", picture: "eiffel", description: "Iconic Parisian landmark.", country: "France", ratings: 4.8, reviews: 1200, comment: "A must-visit when in Paris!", latitude: 48.858, longitude: 2.294),
    Place(id: 2, name: "Statue of Liberty", picture: "liberty", description: "Symbol of freedom.", country: "USA", ratings: 4.7, reviews: 950, comment: "Incredible views of the city.", latitude: 40.689, longitude: -74.044),
    Place(id: 3, name: "Great Wall of China", picture: "china-wall", description: "Ancient defensive wall.", country: "China", ratings: 4.9, reviews: 1800, comment: "A true marvel of history.", latitude: 40.431, longitude: 116.570),
    Place(id: 4, name: "Machu Picchu", picture: "machu-picchu", description: "Incan citadel.", country: "Peru", ratings: 4.7, reviews: 1100, comment: "Breathtaking and mysterious.", latitude: -13.163, longitude: -72.545),
    Place(id: 5, name: "Taj Mahal", picture: "taj-mahal", description: "Mausoleum.", country: "India", ratings: 4.8, reviews: 1500, comment: "A symbol of eternal love.", latitude: 27.175, longitude: 78.042),
    Place(id: 6, name: "Colosseum", picture: "rome", description: "Ancient Roman amphitheater.", country: "Italy", ratings: 4.6, reviews: 900, comment: "A step back in time.", latitude: 41.890, longitude: 12.492),
    Place(id: 7, name: "Pyramids of Giza", picture: "pyramid", description: "Egyptian marvels.", country: "Egypt", ratings: 4.7, reviews: 1300, comment: "Incredible feats of engineering.", latitude: 29.979, longitude: 31.134),
    Place(id: 8, name: "Acropolis of Athens", picture: "athens", description: "Historical Greek site.", country: "Greece", ratings: 4.5, reviews: 800, comment: "Rich in history and culture.", latitude: 37.971, longitude: 23.725),
    Place(id: 9, name: "Santorini", picture: "santorini", description: "Beautiful Greek island.", country: "Greece", ratings: 4.9, reviews: 2000, comment: "Paradise on Earth.", latitude: 36.393, longitude: 25.461),
    Place(id: 10, name: "The Louvre", picture: "louvre", description: "Famous art museum in Paris.", country: "France", ratings: 4.8, reviews: 1600, comment: "A treasure trove of art.", latitude: 48.861, longitude: 2.335),
    Place(id: 11, name: "Venice Canals", picture: "venice", description: "Picturesque waterways.", country: "Italy", ratings: 3.6, reviews: 950, comment: "Romantic and unique.", latitude: 45.440, longitude: 12.337),
    Place(id: 12, name: "Grand Canyon", picture: "canyon", description: "Stunning natural wonder.", country: "USA", ratings: 4.9, reviews: 2200, comment: "Awe-inspiring views.", latitude: 36.107, longitude: -112.113),
    Place(id: 13, name: "Angkor Wat", picture: "angkor-wat", description: "Largest religious monument.", country: "Cambodia", ratings: 4.7, reviews: 1200, comment: "A spiritual experience.", latitude: 13.412, longitude: 103.866),
    Place(id: 14, name: "Petra", picture: "petra", description: "Ancient city.", country: "Jordan", ratings: 4.8, reviews: 1400, comment: "An archaeological gem.", latitude: 30.328, longitude: 35.442),
    Place(id: 15, name: "Christ the Redeemer", picture: "christ-redeemer", description: "Iconic statue in Rio de Janeiro.", country: "Brazil", ratings: 4.7, reviews: 1100, comment: "Overlooking a beautiful city.", latitude: -22.951, longitude: -43.210),
    Place(id: 16, name: "Mesa Verde", picture: "mesa", description: "Ancient cliff dwellings", country: "USA", ratings: 3.5, reviews: 1000, comment: "Historic site!", latitude: 37.238, longitude: -108.462),
    Place(id: 17, name: "Sydney Opera House", picture: "sydney", description: "Architectural masterpiece", country: "Australia", ratings: 4.7, reviews: 1300, comment: "Unique design!", latitude: -33.856, longitude: 151.215),
    Place(id: 18, name: "Chichen Itza", picture: "itza", description: "Mayan archaeological site", country: "Mexico", ratings: 4.7, reviews: 1250, comment: "Impressive pyramid!", latitude: 20.682, longitude: -88.571),
    Place(id: 19, name: "Victoria Falls", picture: "victoria", description: "Waterfall on the Zambezi River", country: "Zimbabwe", ratings: 4.8, reviews: 850, comment: "Natural wonder!", latitude: -17.924, longitude: 25.857),
    Place(id: 20, name: "Sistine Chapel", picture: "sistine", description: "Artistic masterpiece.", country: "Vatican City", ratings: 4.9, reviews: 900, comment: "Stunning frescoes!", latitude: 41.902, longitude: 12.454),
    Place(id: 21, name: "Antelope Canyon", picture: "antelope", description: "Slot canyon in Arizona", country: "USA", ratings: 2.7, reviews: 950, comment: "Ethereal beauty!", latitude: 36.861, longitude: -111.374),
    Place(id: 22, name: "Mount Everest", picture: "everest", description: "Highest peak in the world", country: "Nepal", ratings: 4.8, reviews: 1200, comment: "Ultimate challenge!", latitude: 27.988, longitude: 86.925),
    Place(id: 23, name: "Bora Bora", picture: "bora", description: "A tropical paradise", country: "French Polynesia", ratings: 4.9, reviews: 1100, comment: "Exquisite beauty!", latitude: -16.500, longitude: -151.742),
    Place(id: 24, name: "Gobi Desert", picture: "gobi", description: "Vast desert landscape", country: "Mongolia", ratings: 4.6, reviews: 900, comment: "Endless dunes!", latitude: 44.156, longitude: 103.210),
    Place(id: 25, name: "Yellowstone National Park", picture: "yellowstone", description: "Geothermal wonders", country: "USA", ratings: 4.8, reviews: 1400, comment: "Natural marvels!", latitude: 44.428, longitude: -110.588),
    Place(id: 26, name: "Galápagos Islands", picture: "galapagos", description: "Unique wildlife", country: "Ecuador", ratings: 4.7, reviews: 1000, comment: "Natural diversity!", latitude: -0.821, longitude: -91.137),
    Place(id: 27, name: "Niagara Falls", picture: "niagara", description: "Spectacular waterfalls", country: "Canada", ratings: 4.7, reviews: 1350, comment: "Powerful beauty!", latitude: 43.083, longitude: -79.071),
    Place(id: 28, name: "Bali", picture: "bali", description: "Island paradise", country: "Indonesia", ratings: 3.8, reviews: 1050, comment: "Tropical escape!", latitude: -8.409, longitude: 115.190),
    Place(id: 29, name: "Uluru (Ayers Rock)", picture: "uluru", description: "Iconic sandstone formation", country: "Australia", ratings: 4.8, reviews: 900, comment: "Ancient wonder!", latitude: -25.345, longitude: 131.036)
  ]
  
  func allPlaces() -> [Place] {
    return places
  }
}
