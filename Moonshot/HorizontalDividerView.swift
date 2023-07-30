//
//  HorizontalDivider.swift
//  Moonshot
//
//  Created by Alex Bonder on 7/30/23.
//

import SwiftUI

struct HorizontalDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct HorizontalDivider_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalDividerView()
    }
}
