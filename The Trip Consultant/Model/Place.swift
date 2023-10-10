import Foundation

struct Place: Identifiable {
  var id:  Int
  var name: String
  var picture: String
  var description: String
  var country: String
  var ratings: Double
  var reviews: Int
  var comment: String?
  var latitude: Double
  var longitude: Double
  var isBokmarked: Bool = false
}
