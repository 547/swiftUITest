//
//  ButtonTestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/29.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct ButtonTestView : View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
            Image(systemName: "delete.left")
        }
            
        .padding(.all, 6)
        .clipShape(Rectangle())
        .overlay(Rectangle().stroke(Color.red, lineWidth: 2))
    }
}

#if DEBUG
struct ButtonTestView_Previews : PreviewProvider {
    static var previews: some View {
        ButtonTestView()
    }
}
#endif
