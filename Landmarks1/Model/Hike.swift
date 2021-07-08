//
//  Hike.swift
//  Landmarks1
//
//  Created by locussigilli on 7/7/21.
//

import Foundation


struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distince: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        return Hike.formatter
            .string(fromValue: distince, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
        
    }
}
