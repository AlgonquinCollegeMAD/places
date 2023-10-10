import SwiftUI

struct PlaceCardView: View {
  @Binding var place: Place
  
  var body: some View {
    VStack {
      Image(place.picture)
        .resizable()
        .frame(height: 200)
        .cornerRadius(20.0)
        .overlay(alignment: .topLeading) {
          if place.isBokmarked {
            Image(systemName: "bookmark.fill")
              .resizable()
              .foregroundColor(.red).opacity(0.8)
              .aspectRatio(contentMode: .fit)
              .frame(width: 40, height: 40)
              .padding(.top, 8)
              .shadow(radius: 5)
          }
        }
      
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
