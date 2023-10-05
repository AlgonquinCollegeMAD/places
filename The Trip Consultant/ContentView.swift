import SwiftUI

struct ContentView: View {
  
  var listOfPlaces = Provider.shared.allPlaces().sorted { $0.name < $1.name }
  
  var body: some View {
    ZStack {
      Color.cyan
        NavigationStack{
          List {
            VStack {
              ForEach(listOfPlaces) { place in
                ZStack {
                  PlaceView(place: place)
                    .padding()
                    .background(Color.secondary.opacity(0.2))
                    .cornerRadius(20.0)
                    .padding(.bottom, 30)
                    
        
                  NavigationLink {
                    Text(place.name)
                  } label: {
                    EmptyView()
                  }.frame(width: 0).opacity(0)
                }
                 .listRowSeparator(.hidden)
              }
            }
          }
          .navigationTitle("Places")
          .foregroundColor(.primary)
          .listStyle(.plain)
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
