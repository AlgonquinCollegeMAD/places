//
//  ContentView.swift
//  The Trip Consultant
//
//  Created by Vladimir Cezar on 2023-10-02.
//

import SwiftUI

struct ContentView: View {
  
  var listOfPlaces = Provider.shared.allPlaces().sorted { $0.name < $1.name }
  
  var body: some View {
    List(listOfPlaces) { place in
      HStack {
        Image(place.picture)
          .resizable()
          .frame(width: 30, height: 30)
        Text(place.name)
      }
    }
      .padding()
  }
}

#Preview {
  ContentView()
}
