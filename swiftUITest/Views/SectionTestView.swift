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
                ForEach.init(0...16) { _ in
                    Text("dusiioso")
                }
            }
            Section.init(header:
                //给section header 添加背景
                ZStack.init(alignment: .leading, content: {
                    Rectangle.init()
                        .foregroundColor(.red)
                        .edgesIgnoringSafeArea(.horizontal)
                    Text("header")
                        .color(.white)
                        .font(.system(.title))
                    .padding(.leading, 16)
                })
                    .frame(width: UIScreen.main.bounds.width)
            , footer: Text("footer")) {
                ForEach.init(0..<5) { _ in
                    Text("haha")
                }
            }.foregroundColor(.red)
            
            Section.init(header: Text("header")) {
                ForEach.init(0...12) { _ in
                    Text("hiii")
                    .background(Color.red)
                }
            }.background(Color.blue)
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
