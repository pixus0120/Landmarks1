//
//  Landmarks1App.swift
//  Landmarks1
//
//  Created by locussigilli on 6/28/21.
//

import SwiftUI

@main
struct Landmarks1App: App {
    //use the @StateObject attribute to initialize a model object for a given property only once during the life time of the app.
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
