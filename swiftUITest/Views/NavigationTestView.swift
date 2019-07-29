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
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width, height: 160).edgesIgnoringSafeArea(.all)
                
                List.init {
                    ForEach.init(0...8) { _ in
                        HStack {
                            Image(systemName: "delete.left")
                            .foregroundColor(.black)
                            Text("545555")
                            .font(.system(size: 20))
                            Text("\u{1C70}")
                                .font(.custom("SF-Pro-Display-Regular.otf", size: 20))
                            .color(.purple)
                        }
                    }
                }.background(Color.red).offset(y: -160)
            }
            .navigationBarTitle("title", displayMode: .automatic)
            .accentColor(.yellow)
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
