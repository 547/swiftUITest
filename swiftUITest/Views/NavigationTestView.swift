//
//  NavigationTestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/15.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct NavigationTestView : View {


    var body: some View {
        //目前SwiftUI好像还没有方法可以设置navigationbar背景颜色和title字体颜色的，可能以后会更新吧
        NavigationView {
            VStack{
                Rectangle.init()
                    .foregroundColor(.red)
                    .frame(width: UIScreen.main.bounds.width, height: 160).edgesIgnoringSafeArea(.top)
              
                List.init {
                    ForEach.init(0...8) { _ in
                        Text("45545")
                    }
                }.background(Color.red).offset(y: -160)
                
            }
                
            .navigationBarTitle("title", displayMode: .large)
        }
    }
}

#if DEBUG
struct NavigationTestView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationTestView()
    }
}
#endif
