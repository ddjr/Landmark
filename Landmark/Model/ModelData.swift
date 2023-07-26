//
//  ModelData.swift
//  Landmark
//
//  Created by David Daly on 7/26/23.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

// 🧩 T is the model type. in this case landmark.
// This is formatting the data into the landmark object.
// Which is then able to be used in the app
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // 🕵️‍♂️ Does the file exist?
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    // 🕵️‍♂️ Does the file have data?
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // 🕵️‍♂️ Can the data be parsed?
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
