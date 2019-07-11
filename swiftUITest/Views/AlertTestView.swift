//
//  AlertTestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/11.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct AlertTestView : View {
    @State var showAlert = false
    var body: some View {
        //presentation 下面两种写发都可以，由此看来其实presntation方法随便在那调用都是可以的，只要设置好绑定的属性（这里是showAlert）就行了
        Button.init(action: {
            self.showAlert = !self.showAlert
        }) {
            Text("click")
//                .presentation($showAlert) { () -> Alert in
//                    Alert.init(title: Text("test"))
//            }
        }.presentation($showAlert) { () -> Alert in
            Alert.init(title: Text("21222"))
        }
    }
}

#if DEBUG
struct AlertTestView_Previews : PreviewProvider {
    static var previews: some View {
        AlertTestView()
    }
}
#endif
