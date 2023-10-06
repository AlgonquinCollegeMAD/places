import SwiftUI

struct PlaceCardView: View {
  var place: Place
  
  var body: some View {
    VStack {
      Image(place.picture)
        .resizable()
        .frame(height: 200)
        .background(Color.red)
        .cornerRadius(20.0)
      
      HStack {
        Text(place.name)
          .font(.title)
          .fontWeight(.bold)
        Spacer()
        VStack() {
          RatingsStarView(rating: place.ratings)
          Text("Reviews: \(place.reviews)")
            .foregroundColor(.orange)
        }
      }
      
      HStack() {
        Text(place.description)
          .font(.system(size: 20))
        Spacer()
      }
      .padding(.vertical, 8)
      
      HStack() {
        Spacer()
        Text(place.country)
          .font(.system(size: 14))
      }
    }
  }
}

#Preview {
  ZStack {
    Color.blue.edgesIgnoringSafeArea(.all)
    PlaceCardView(
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
    ).padding()
  }
}
