//
//  GroupTestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/11.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct GroupTestView : View {
    var body: some View {
        VStack.init {
            VStack.init {
                Group.init {
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                    Text("Hello World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                }.padding()
            }
            HStack.init {
                Group.init {
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                    Text("Hello World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                    Text("Hello World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                }.padding()
            }
        }
        
        
    }
}

#if DEBUG
struct GroupTestView_Previews : PreviewProvider {
    static var previews: some View {
        GroupTestView()
    }
}
#endif
