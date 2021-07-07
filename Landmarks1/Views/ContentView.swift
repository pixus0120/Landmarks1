//
//  ContentView.swift
//  Landmarks1
//
//  Created by locussigilli on 6/28/21.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
