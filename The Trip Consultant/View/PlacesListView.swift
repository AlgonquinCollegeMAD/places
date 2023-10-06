import SwiftUI

struct PlacesListView: View {
  
  @State var listOfPlaces = [Place]()
  
  var body: some View {
    if listOfPlaces.count == 0 {
      VStack {
        ProgressView()
        Text("Loading data...")
          .onAppear() {
            print("SHOW")
//            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
              listOfPlaces = Provider.shared.allPlaces().sorted { $0.name < $1.name }
//            }
          }
      }
    } else {
      NavigationStack {
        List {
          ForEach(listOfPlaces) { place in
            PlaceCardView(place: place)
              .padding()
              .background(Color.secondary.opacity(0.2))
              .cornerRadius(20.0)
              .background(
                NavigationLink("", destination: PlaceMapView(place: place)).opacity(0.0)
              )
              .listRowSeparator(.hidden)
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
    PlacesListView()
  }
}
