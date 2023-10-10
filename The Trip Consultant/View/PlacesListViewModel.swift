import Foundation

class PlacesListViewModel: ObservableObject {
  @Published var list = [Place]()
  
  init() {
    list = Provider.shared.allPlaces().sorted { $0.name < $1.name }
  }
}
