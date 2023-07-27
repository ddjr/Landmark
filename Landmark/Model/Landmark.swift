//
//  Landmark.swift
//  Landmark
//
//  Created by David Daly on 7/26/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    // 🔑 Key value
    var id: Int
    
    // 📝 Variables
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    // 🗺️ Image view
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    // 📍 Coordinates
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
