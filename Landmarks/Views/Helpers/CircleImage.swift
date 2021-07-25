//
//  CircleImage.swift
//  Landmarks
//
//  Created by Mikhail Dudarev on 22.07.2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
