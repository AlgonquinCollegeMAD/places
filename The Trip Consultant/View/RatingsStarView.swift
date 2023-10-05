import SwiftUI

struct RatingsStarView: View {
  var rating: Double
  var stars: (Int, Int) {
    let whole = rating.rounded(.down)
    let fractional = (rating - whole)
    
    var numberOfHalfStars: Int = (0.3..<0.8).contains(fractional) ? 1 : 0
    var numberOfFullStars = whole
    
    if fractional >= 0.8 {
      numberOfFullStars = numberOfFullStars + 1
      numberOfHalfStars = 0
    }
    
    return (Int(numberOfFullStars), numberOfHalfStars)
  }
  
  var body: some View {
    HStack {
      if stars.0 == 0 && stars.1 == 0 {
        Image(systemName: "star")
          .foregroundColor(.orange)
      }
      if stars.0 > 0 {
        ForEach((1...stars.0), id: \.self) { _ in
          Image(systemName: "star.fill")
            .foregroundColor(.orange)
        }
      }
      if stars.1 > 0 {
        Image(systemName: "star.leadinghalf.filled")
          .foregroundColor(.orange)
      }
    }
  }
}

#Preview {
  ScrollView {
    VStack {
      ForEach(Array(stride(from: 0, to: 5.1, by: 0.1)), id: \.self) { value in
        HStack {
          Text("\(String(format: "%.1f", value)) ")
          RatingsStarView(rating: value)
        }
      }
    }
  }
}
