//
//  Landmark1Detail.swift
//  Landmarks1
//
//  Created by locussigilli on 6/29/21.
//

import SwiftUI

struct Landmark1Detail: View {
    var landmark: Landmark1
    
    
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame( height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
//            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct Landmark1Detail_Previews: PreviewProvider {
    static var previews: some View {
        Landmark1Detail(landmark: ModelData().landmarks[0])
        
    }
}
