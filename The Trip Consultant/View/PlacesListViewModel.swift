import Foundation

enum SortStrategy: CaseIterable {
  case byName
  case byCountry
  
  var label: String {
    switch self {
    case .byName:
      return "By name"
    case .byCountry:
      return "By country"
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
  var strategy: SortStrategy = .byName {
    didSet {
      switch strategy {
      case .byName:
        list.sort { $0.name < $1.name }
      case .byCountry:
        list.sort { $0.country < $1.country }
      }
    }
  }
  
  init() {
    list = Provider.shared.allPlaces()
  }
}
