//
//  LandmarkApp.swift
//  Landmark
//
//  Created by David Daly on 7/26/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
