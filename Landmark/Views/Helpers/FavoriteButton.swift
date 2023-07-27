//
//  FavoriteButton.swift
//  Landmark
//
//  Created by David Daly on 7/27/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorites", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(false))
    }
}

// @State -> Watch out for this. This value can update.
//           If it does, the screen needs to update.
//           (Local)

// @Binding -> This value is NOT defined here. It's defined somewhere else.
//             probably in a parent view. this view may also update this value
//             so watch out!
//             (Parent/Child)


// @Published -> used with Objects, track this variable. It's like state,
//               but it's declared in a class not a view

// @ObservedObject -> (Only used in 1 spot)
// @EnvironmentObject -> (Gobal)

