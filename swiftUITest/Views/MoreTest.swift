//
//  MoreTest.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/8.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct MoreTest : View {
    @State var push = false
    var body: some View {
        NavigationView.init {
            if push {
                Text("fan si la")
                    .tapAction {
                        self.push = false
                }
                .navigationBarTitle("More Test")
                    .padding()
                
            }else{
                List.init {
                    ForEach.init(0...8) { index in
                        if (index == 0 || index == 1) {
                            ScrollViewCell {
                                self.push = true
                            }
                        }else{
                            NavigationLink.init(destination: Text("fan si la")) {
                                LandmarkRowView(landmark: Landmark())
                            }
                        }
                    }
                }
                .navigationBarTitle("More Test")
                    .padding()
            }
            
        }
        
        
    }
}

#if DEBUG
struct MoreTest_Previews : PreviewProvider {
    static var previews: some View {
        MoreTest()
    }
}
#endif
