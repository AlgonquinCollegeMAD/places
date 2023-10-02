import Foundation

class Provider {
  
  static let shared: Provider = Provider()
  
  private init() {}
  
  private let places: [Place] = [
    Place(name: "Eiffel Tower", picture: "eiffel", description: "Iconic Parisian landmark.", country: "France", ratings: 4.8, reviews: 1200, comment: "A must-visit when in Paris!"),
    Place(name: "Statue of Liberty", picture: "liberty", description: "Symbol of freedom in New York.", country: "USA", ratings: 4.7, reviews: 950, comment: "Incredible views of the city."),
    Place(name: "Great Wall of China", picture: "china-wall", description: "Ancient defensive wall.", country: "China", ratings: 4.9, reviews: 1800, comment: "A true marvel of history."),
    Place(name: "Machu Picchu", picture: "machu-picchu", description: "Incan citadel.", country: "Peru", ratings: 4.7, reviews: 1100, comment: "Breathtaking and mysterious."),
    Place(name: "Taj Mahal", picture: "taj-mahal", description: "Mausoleum.", country: "India", ratings: 4.8, reviews: 1500, comment: "A symbol of eternal love."),
    Place(name: "Colosseum", picture: "rome", description: "Ancient Roman amphitheater.", country: "Italy", ratings: 4.6, reviews: 900, comment: "A step back in time."),
    Place(name: "Pyramids of Giza", picture: "pyramid", description: "Egyptian marvels.", country: "Egypt", ratings: 4.7, reviews: 1300, comment: "Incredible feats of engineering."),
    Place(name: "Acropolis of Athens", picture: "athens", description: "Historical Greek site.",  country: "Greece", ratings: 4.5, reviews: 800, comment: "Rich in history and culture."),
    Place(name: "Santorini", picture: "santorini", description: "Beautiful Greek island.", country: "Greece", ratings: 4.9, reviews: 2000, comment: "Paradise on Earth."),
    Place(name: "The Louvre", picture: "louvre", description: "Famous art museum in Paris.", country: "France", ratings: 4.8, reviews: 1600, comment: "A treasure trove of art."),
    Place(name: "Venice Canals", picture: "venice", description: "Picturesque waterways.", country: "Italy", ratings: 4.6, reviews: 950, comment: "Romantic and unique."),
    Place(name: "Grand Canyon", picture: "canyon", description: "Stunning natural wonder.", country: "USA", ratings: 4.9, reviews: 2200, comment: "Awe-inspiring views."),
    Place(name: "Angkor Wat", picture: "angkor-wat", description: "Largest religious monument.", country: "Cambodia", ratings: 4.7, reviews: 1200, comment: "A spiritual experience."),
    Place(name: "Petra", picture: "petra", description: "Ancient city.", country: "Jordan", ratings: 4.8, reviews: 1400, comment: "An archaeological gem."),
    Place(name: "Christ the Redeemer", picture: "christ-redeemer", description: "Iconic statue in Rio de Janeiro.", country: "Brazil", ratings: 4.7, reviews: 1100, comment: "Overlooking a beautiful city."),
    Place(name: "Mesa Verde", picture: "mesa", description: "Ancient cliff dwellings", country: "USA", ratings: 4.5, reviews: 1000, comment: "Historic site!"),
    Place(name: "Sydney Opera House", picture: "sydney", description: "Architectural masterpiece", country: "Australia", ratings: 4.7, reviews: 1300, comment: "Unique design!"),
    Place(name: "Chichen Itza", picture: "itza", description: "Mayan archaeological site", country: "Mexico", ratings: 4.7, reviews: 1250, comment: "Impressive pyramid!"),
    Place(name: "Victoria Falls", picture: "victoria", description: "Waterfall on the Zambezi River", country: "Zimbabwe", ratings: 4.8, reviews: 850, comment: "Natural wonder!"),
    Place(name: "Sistine Chapel", picture: "sistine", description: "Artistic masterpiece in Vatican City", country: "Vatican City", ratings: 4.9, reviews: 900, comment: "Stunning frescoes!"),
    Place(name: "Antelope Canyon", picture: "antelope", description: "Slot canyon in Arizona", country: "USA", ratings: 4.7, reviews: 950, comment: "Ethereal beauty!"),
    Place(name: "Mount Everest", picture: "everest", description: "Highest peak in the world", country: "Nepal", ratings: 4.8, reviews: 1200, comment: "Ultimate challenge!"),
    Place(name: "Meteora", picture: "meteora", description: "Monastery complex in Greece", country: "Greece", ratings: 4.7, reviews: 800, comment: "Spiritual retreat!"),
    Place(name: "Bora Bora", picture: "bora", description: "Tropical paradise in French Polynesia", country: "French Polynesia", ratings: 4.9, reviews: 1100, comment: "Exquisite beauty!"),
    Place(name: "Gobi Desert", picture: "gobi", description: "Vast desert landscape", country: "Mongolia", ratings: 4.6, reviews: 900, comment: "Endless dunes!"),
    Place(name: "Yellowstone National Park", picture: "yellowstone", description: "Geothermal wonders in the USA", country: "USA", ratings: 4.8, reviews: 1400, comment: "Natural marvels!"),
    Place(name: "Galápagos Islands", picture: "galapagos", description: "Unique wildlife in Ecuador", country: "Ecuador", ratings: 4.7, reviews: 1000, comment: "Natural diversity!"),
    Place(name: "Niagara Falls", picture: "niagara", description: "Spectacular waterfalls", country: "Canada", ratings: 4.7, reviews: 1350, comment: "Powerful beauty!"),
    Place(name: "Bali", picture: "bali", description: "Indonesian island paradise", country: "Indonesia", ratings: 4.8, reviews: 1050, comment: "Tropical escape!"),
    Place(name: "Uluru (Ayers Rock)", picture: "uluru", description: "Iconic sandstone formation in Australia", country: "Australia", ratings: 4.8, reviews: 900, comment: "Ancient wonder!"),
  ]

  func allPlaces() -> [Place] {
    return places
  }
}
