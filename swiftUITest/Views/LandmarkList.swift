//
//  LandmarkList.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/5.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var landmarks = [Landmark.init(id: 0, name: "0"), Landmark.init(id: 1, name: "1"), Landmark.init(id: 2, name: "2"), Landmark.init(id: 3, name: "3"),Landmark.init(id: 4, name: "4"), Landmark.init(id: 5, name: "5")]
    var body: some View {
        NavigationView.init {
            List.init {
                ForEach.init(landmarks) { item in
                    NavigationLink.init(destination:
                        LandmarkDetail(landmark: item)
                    ) {
                        LandmarkRowView(landmark: item)
                    }
                }
            }
            .navigationBarTitle("Landmark list")
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
