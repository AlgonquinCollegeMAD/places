import SwiftUI

struct PlacesListView: View {
    
    @State var listOfPlaces = [Place]()
    
    var body: some View {
        if listOfPlaces.count == 0 {
            VStack {
                ProgressView()
                Text("Loading data...")
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                        listOfPlaces = Provider.shared.allPlaces().sorted { $0.name < $1.name }
                    }
            }
            }
        } else {
            NavigationStack {
                List {
                    VStack {
                        ForEach(listOfPlaces) { place in
                            ZStack {
                                PlaceCardView(place: place)
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
        PlacesListView()
    }
}
