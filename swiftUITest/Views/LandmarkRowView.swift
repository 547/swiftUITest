//
//  LandmarkRowView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/4.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct LandmarkRowView : View {
    var landmark = Landmark()
    var body: some View {
        HStack{
            Image.init(landmark.imageName, label:
                Text(landmark.imageName).color(.red)
            )
            
            HStack{
                Text(landmark.name)
                Text(landmark.state)
            }
        }
    }
}

#if DEBUG
struct LandmarkRowView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkRowView()
    }
}
#endif
