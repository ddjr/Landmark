//
//  LandmarkList.swift
//  Landmark
//
//  Created by David Daly on 7/26/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
             LandmarkRow(landmark: landmark)
        }
        .scrollIndicators(.hidden)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
