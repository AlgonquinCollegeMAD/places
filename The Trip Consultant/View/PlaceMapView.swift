import SwiftUI

struct PlaceMapView: View {
    
    var place: Place
    
    var body: some View {
        Text(place.name)
    }
}

#Preview {
  PlaceMapView(
    place: Place(
      name: "Bali",
      picture: "bali",
      description: "Island paradise",
      country: "Indonesia",
      ratings: 3.8,
      reviews: 1050,
      comment: "Tropical escape!",
      latitude: -8.409,
      longitude: 115.190
    )
  )
}
