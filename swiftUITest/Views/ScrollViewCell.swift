//
//  ScrollViewCell.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/8.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct ScrollViewCell : View {
    var tapedItem:(() -> ())?
    var body: some View {
        VStack.init(alignment: .leading, spacing: 0) {
            Text("title")
            .font(.system(size: 22))
            .bold()
            ScrollView.init(.horizontal, showsIndicators: false) {
                HStack.init(alignment: .center, spacing: 16) {
                    ForEach.init(0...2) { _ in
                        CollectionViewCell().tapAction {
                            self.tapedItem?()
                        }
                    }
                }
            }
            
        }
        
    }
}

#if DEBUG
struct ScrollViewCell_Previews : PreviewProvider {
    static var previews: some View {
        ScrollViewCell()
    }
}
#endif
