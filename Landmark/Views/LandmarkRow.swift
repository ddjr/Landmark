//
//  LandmarkRow.swift
//  Landmark
//
//  Created by David Daly on 7/26/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    // 🗺️ Gets preview landmark data from ModelData
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        VStack {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}
