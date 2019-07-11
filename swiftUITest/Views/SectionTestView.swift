//
//  SectionTestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/11.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct SectionTestView : View {
    var body: some View {
        List.init {
            Section.init {
                ForEach.init(0...5) { _ in
                    Text("dusiioso")
                }
            }
            Section.init(header: Text("header").background(Color.white), footer: Text("footer")) {
                ForEach.init(0..<3) { _ in
                    Text("haha")
                }
            }
            
            Section.init(header: Text("header")) {
                ForEach.init(0...3) { _ in
                    Text("hiii")
                    .background(Color.red)
                }
            }
        }
    }
}

#if DEBUG
struct SectionTestView_Previews : PreviewProvider {
    static var previews: some View {
        SectionTestView()
    }
}
#endif
