import SwiftUI
import MapKit

struct PlaceMapView: View {
  
  @Binding var place: Place
  
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
