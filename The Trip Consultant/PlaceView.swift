import SwiftUI

struct PlaceView: View {
  var place: Place
  
  var body: some View {
    VStack {
      Image(place.picture)
        .resizable()
        .frame(width: .infinity, height: 200)
        .background(Color.red) // Add a white background
        .cornerRadius(20.0) // Apply corner radius here
        .padding()
      Text(place.name)
      Text(place.country)
    }
  }
}

#Preview {
  PlaceView(place: Place(name: "Meteora", picture: "meteora", description: "Monastery complex in Greece", country: "Greece", ratings: 4.7, reviews: 800, comment: "Spiritual retreat!"))
}
