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
    NavigationStack{
      List(listOfPlaces) { place in
        NavigationLink {
          PlaceView(place: place)
        } label: {
          HStack {  
            Image(place.picture)
              .resizable()
              .frame(width: 90, height: 50
              )
            Text(place.name)
          }
        }
      }
      .padding()
      .navigationTitle("Best places to visit")
    }
  }
}

#Preview {
  ContentView()
}
