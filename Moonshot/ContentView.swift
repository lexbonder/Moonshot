//
//  ContentView.swift
//  Moonshot
//
//  Created by Alex Bonder on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingListView = false
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            Group {
                if showingListView {
                    ListStyle(astronauts: astronauts, missions: missions)
                } else {
                    GridStyle(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .padding([.horizontal, .bottom])
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem {
                    Button("See \(showingListView ? "Grid" : "List")") {
                        showingListView.toggle()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
