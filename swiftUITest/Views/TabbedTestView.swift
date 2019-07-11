//
//  TabbedTestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/11.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct TabbedTestView : View {
    @State var index = 0
    var imgs = [Image]()
    var body: some View {
        TabbedView.init(selection: $index) {
            ForEach.init(0...3) { ind in
                Text("\(ind)")
                    .tabItem {
                        Image.init("turtlerock")
                }
            }
        }
    }
}

#if DEBUG
struct TabbedTestView_Previews : PreviewProvider {
    static var previews: some View {
        TabbedTestView()
    }
}
#endif
