//
//  Landmark1List.swift
//  Landmarks1
//
//  Created by locussigilli on 6/29/21.
//

import SwiftUI

struct Landmark1List: View {
    var body: some View {
        List{
            Landmark1Row(landmark: landmarks[0])
            Landmark1Row(landmark: landmarks[1])
        }
    }
}

struct Landmark1List_Previews: PreviewProvider {
    static var previews: some View {
        Landmark1List()
    }
}
