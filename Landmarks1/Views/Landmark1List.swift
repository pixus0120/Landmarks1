//
//  Landmark1List.swift
//  Landmarks1
//
//  Created by locussigilli on 6/29/21.
//

import SwiftUI

struct Landmark1List: View {
    var body: some View {
//        List{
//            Landmark1Row(landmark: landmarks[0])
//            Landmark1Row(landmark: landmarks[1])
//        }
        
        //Complete the dynamically-generated list by returning a LandmarkRow from the closure.This creates one LandmarkRow for each element in the landmarks array.
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink(destination: Landmark1Detail()){
                Landmark1Row(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct Landmark1List_Previews: PreviewProvider {
    static var previews: some View {
        Landmark1List()
    }
}
