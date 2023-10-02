import Foundation

struct Place: Identifiable {
  var id = UUID()
  var name: String
  var picture: String
  var description: String
  var country: String
  var ratings: Double
  var reviews: Int
  var comment: String?
}
