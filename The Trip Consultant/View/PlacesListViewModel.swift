import Foundation

class PlacesListViewModel: ObservableObject {
  @Published var list = [Place]()
  
  init() {
    list = Provider.shared.allPlaces().sorted { $0.name < $1.name }
  }
  
  func sortByName() {
    list.sort { $0.name < $1.name }
  }
  
  func sortByCountry() {
    list.sort { $0.country < $1.country }
  }
}
