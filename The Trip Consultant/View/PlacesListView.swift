import SwiftUI

struct PlacesListView: View {
  
  @ObservedObject var model = PlacesListViewModel()
  
  var body: some View {
    if model.list.count == 0 {
      VStack {
        ProgressView()
        Text("Loading data...")
      }
    } else {
      NavigationStack {
        List {
          ForEach(model.list.indices, id: \.self) { index in
            PlaceCardView(place: $model.list[index])
              .padding()
              .background(Color.secondary.opacity(0.2))
              .cornerRadius(20.0)
              .background(
                NavigationLink("", destination: PlaceMapView(place: $model.list[index])).opacity(0.0)
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
