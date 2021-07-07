//
//  Landmarks1App.swift
//  Landmarks1
//
//  Created by locussigilli on 6/28/21.
//
import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
