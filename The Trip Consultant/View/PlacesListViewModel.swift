import Foundation

enum SortStrategy {
  case byName
  case byCountry
  
  var label: String {
    switch self {
    case .byName:
      return "Order by name"
    case .byCountry:
      return "Order by country"
    }
  }
  
  var nextStrategy: SortStrategy {
    switch self {
    case .byName:
      return .byCountry
    case .byCountry:
      return .byName
    }
  }
}

class PlacesListViewModel: ObservableObject {
  @Published var list = [Place]()
  @Published private(set) var strategy: SortStrategy
  
  init(strategy: SortStrategy) {
    self.strategy = strategy
    list = Provider.shared.allPlaces()
    change(strategy: strategy)
  }
  
  func change(strategy: SortStrategy) {
    switch strategy {
    case .byName:
      list.sort { $0.name < $1.name }
    case .byCountry:
      list.sort { $0.country < $1.country }
    }
    self.strategy = strategy
  }
}
