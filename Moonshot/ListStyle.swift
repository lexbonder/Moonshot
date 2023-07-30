//
//  ListStyle.swift
//  Moonshot
//
//  Created by Alex Bonder on 7/30/23.
//

import SwiftUI

struct ListStyle: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List (missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack(spacing: 20) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text(mission.displayName)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(mission.formattedLaunchDate)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.5))
                }
            }
            .listRowBackground(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.lightBackground)
                    .padding(2)
            )
            .listRowSeparator(.hidden)
        }
        .listStyle(.inset)
        .scrollContentBackground(.hidden)
    }
}

struct ListStyle_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        ListStyle(astronauts: astronauts, missions: missions)
            .preferredColorScheme(.dark)
    }
}
