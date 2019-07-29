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
            }
            
            Section.init(header:
                //更科学一点的设置section header 添加背景，重点就是设置相对父视图宽度relativeWidth的值大于1就可以了
                VStack.init(content: {
                    Spacer()
                    HStack.init {
                        Text("header")
                        Spacer()
                    }
                    Spacer()
                }).padding(0).background(Color.blue).relativeWidth(1.1)
                //下面这种写法也是一样的
//                VStack.init(content: {
//                    Spacer()
//                    HStack.init {
//                        Text("header")
//                        Spacer()
//                    }
//                    Spacer()
//                }).padding(0).background(Color.blue.relativeWidth(1.1))
            ) {
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
