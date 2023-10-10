import SwiftUI
import MapKit

struct PlaceMapView: View {
  
  @State var place: Place
  
  var body: some View {
    NavigationStack {
      VStack {
        HStack {
          VStack (alignment: .leading) {
            Text(place.description)
              .font(.headline)
            Text(place.comment ?? "")
              .font(.subheadline)
          }
          Spacer()
          Button(action: {
            place.isBokmarked.toggle()
          }, label: {
            Image(systemName: (place.isBokmarked ? "bookmark.fill" : "bookmark"))
          })
        }
        
      }
      .padding()
      .navigationTitle(place.name)
      
      Map(
        bounds:MapCameraBounds(minimumDistance: 40000, maximumDistance: 40000)
      ) {
        Marker(
          place.name,
          coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)
        )
      }
    }
  }
}

#Preview {
  PlaceMapView(
    place: Place(
      id: 0,
      name: "Christ the Redeemer",
      picture: "christ-redeemer",
      description: "Iconic statue in Rio de Janeiro.",
      country: "Brazil",
      ratings: 4.7,
      reviews: 1100,
      comment: "Overlooking a beautiful city.",
      latitude: -22.951,
      longitude: -43.210
    )
  )
}
