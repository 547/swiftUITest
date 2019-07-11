//
//  ModalTestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/11.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct ModalTestView : View {
    @State var show = false
    var model:Modal {
        return Modal.init(Text("5454545")) {
            print("dismiss")
            self.show = false
        }
    }
    var body: some View {
        Text(show ? /*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/ : "dismiss")
            .tapAction {
                self.show = true
        }.presentation(show ? model : nil)
        
    }
}

#if DEBUG
struct ModalTestView_Previews : PreviewProvider {
    static var previews: some View {
        ModalTestView()
    }
}
#endif
