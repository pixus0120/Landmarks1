//
//  MapView.swift
//  Landmarks1
//
//  Created by locussigilli on 6/28/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    //Add an onAppear view modifier to the map that triggers a calculation of the region based on the current coordinate.
    @State private var region = MKCoordinateRegion()
    
//        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
            setRegion(coordinate)
                
            }
    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView(coordinate: CLLocationCoordinate2D(
//            latitude: 34.011_286,
//            longitude: -116.166_868))
//    }
//}
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
        center: coordinate, span: MKCoordinateSpan(
            latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
