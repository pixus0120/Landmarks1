//
//  ModelData.swift
//  Landmarks1
//
//  Created by locussigilli on 6/29/21.
//

import Foundation
import Combine

//SwiftUI subscribes to your observable object, and updates any views that need refreshing when the data changes. with import Combine
final class ModelData: ObservableObject{
    //An observable object needs to publish any changes to its data, so that its subscribers can pick up the change.
    @Published var landmarks: [Landmark1] = load("landmarkData.json")
}


//Create an array of landmarks that you initialize from landmarkData.json.
var landmarks: [Landmark1] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
