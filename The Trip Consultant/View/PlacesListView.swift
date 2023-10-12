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
            GeometryReader { geometry in
              PlaceCardView(place: $model.list[index])
                .padding()
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(20.0)
                .background(
                  NavigationLink("", destination: PlaceMapView(place: $model.list[index])).opacity(0.0)
                )
                .rotation3DEffect(
                  Angle(degrees: getDelta(geometry: geometry)),
                  axis: (x: 1.0, y: 0.0, z: 0.0)
                )
                .opacity(getDeltaOpacity(geometry: geometry))
            }
            .frame(height: 390)
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
          }
        }
        .navigationTitle("Places")
        .foregroundColor(.primary)
        .listStyle(.plain)
      }
    }
  }
  
  func getDelta(geometry: GeometryProxy) -> Double {
    let height = UIScreen.main.bounds.height
    let position = geometry.frame(in: .global).midY
    return (60 * position / height) - 30.0
  }
  
  func getDeltaOpacity(geometry: GeometryProxy) -> Double {
    let height = UIScreen.main.bounds.height
    let position = geometry.frame(in: .global).midY
    return Double(sin(Float(position * Double.pi / height)))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    PlacesListView()
  }
}
