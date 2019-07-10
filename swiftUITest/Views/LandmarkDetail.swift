//
//  LandmarkDetail.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/4.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var landmark = Landmark()
    var body: some View {
        VStack {
            MapView(landmark: landmark)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            
            CircleImage(image: landmark.imageName)
                .offset(y: -200)
                .padding(.bottom, -200)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
        
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif
