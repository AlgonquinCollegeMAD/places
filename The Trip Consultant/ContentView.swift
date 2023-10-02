//
//  ContentView.swift
//  The Trip Consultant
//
//  Created by Vladimir Cezar on 2023-10-02.
//

import SwiftUI

struct ContentView: View {
  
  var listOfPlaces = Provider.shared.allPlaces() 
  
  var body: some View {
    List(listOfPlaces) { place in
      Text(place.name)
    }
      .padding()
  }
}

#Preview {
  ContentView()
}
