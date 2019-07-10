//
//  CollectionViewCell.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/8.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct CollectionViewCell : View {
    var body: some View {
        VStack.init(alignment: .leading, spacing: 8) {
//image 如果要改变 image 显示的size 可以使用 resizable 和 frame 搭配使用，只是用frame的话是不会生效的
            Image.init("turtlerock")
                .resizable()
                       .frame(width: 80, height: 80)
            Text("testhjjhjhjhjhjhjhjhjhjhhjhjhjeeretewretertret")
            .lineLimit(3)
                .frame(width: 80)
            
            
        }
        
    }
}


#if DEBUG
struct CollectionViewCell_Previews : PreviewProvider {
    static var previews: some View {
        CollectionViewCell()
    }
}
#endif
