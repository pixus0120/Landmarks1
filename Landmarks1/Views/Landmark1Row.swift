//
//  Landmark1Row.swift
//  Landmarks1
//
//  Created by locussigilli on 6/29/21.
//

import SwiftUI

struct Landmark1Row: View {
    var landmark: Landmark1
    
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

struct Landmark1Row_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        
        //Group is a container for grouping view content. Xcode renders the group’s child views as separate previews in the canvas.
        Group{
            Landmark1Row(landmark: landmarks[0])
            Landmark1Row(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
