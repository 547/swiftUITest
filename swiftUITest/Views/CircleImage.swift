//
//  CircleImage.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/4.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image:String
    var body: some View {
        Image(image)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: "turtlerock")
    }
}
#endif
