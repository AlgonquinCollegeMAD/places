import SwiftUI
import MapKit

struct PlaceMapView: View {
    
    var place: Place
    
    var body: some View {
      ZStack {
        VStack {
          Map(
            coordinateRegion: .constant(
              MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                  latitude: place.latitude,
                  longitude: place.longitude
                ),
                span: MKCoordinateSpan(
                  latitudeDelta: 0.5,
                  longitudeDelta: 0.5
                )
              )
            ),
            interactionModes: []
          )
          .frame(width: 400, height: 300)
          .edgesIgnoringSafeArea(.all)
          Spacer()
        }
        VStack(alignment: .leading) {
          Image(place.picture)
            .resizable()
            .frame(height: 250)
            .aspectRatio(contentMode: .fit)
            .clipShape(
              Circle()
            )
            .overlay(
              Circle()
                .stroke(lineWidth: 16)
                .foregroundColor(Color.gray.opacity(0.1))
            )
            .padding(.top, 50)
          Spacer()
        }
      }
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
