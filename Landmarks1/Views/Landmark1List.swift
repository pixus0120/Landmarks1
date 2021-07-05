//
//  Landmark1List.swift
//  Landmarks1
//
//  Created by locussigilli on 6/29/21.
//

import SwiftUI

struct Landmark1List: View {
    //Because you use state properties to hold information that’s specific to a view and its subviews, you always create state as private.
    @State private var showFavoritesOnly = false
    var filteredLandmarks: [Landmark1] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
//        List{
//            Landmark1Row(landmark: landmarks[0])
//            Landmark1Row(landmark: landmarks[1])
//        }
        
        //Complete the dynamically-generated list by returning a LandmarkRow from the closure.This creates one LandmarkRow for each element in the landmarks array.
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
            ForEach(filteredLandmarks){ landmark in
                NavigationLink(destination: Landmark1Detail(landmark: landmark)){
                Landmark1Row(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct Landmark1List_Previews: PreviewProvider {
    static var previews: some View {
       Landmark1List()
        
        
//        //ForEach operates on collections the same way as the list, which means you can use it anywhere you can use a child view, such as in stacks, lists, groups, and more. When the elements of your data are simple value types — like the strings you’re using here — you can use:
//        //    \.self as key path to the identifier.
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//            Landmark1List()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
  
    }
}
