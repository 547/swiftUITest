//
//  TestView.swift
//  swiftUITest
//
//  Created by Supernova SanDick SSD on 2019/7/5.
//  Copyright © 2019 Seven. All rights reserved.
//

import SwiftUI

struct TestView : View {
    @State var show = false
    @State var progress:Float = 0
    var backgroundView: some View {
        Text("back view")
            .overlay(Rectangle().foregroundColor(.red))
    }
    var name = "name"
    var body: some View {
        NavigationView.init {
            VStack.init {
                
                Toggle.init(isOn: $show) {
                    Text("hey")
                }
                NavigationLink.init(destination:
                Text("fan si la")) {
                    Text("hah")
                }
                PresentationLink.init(destination:
                    Text("pop")
                ) {
                    Text("pop")
                }
                
                Slider.init(value: $progress, from: 0.0, through: 100.0, by: 5.0)
                Button.init("change progress") {
                    if self.progress >= 100 {
                        self.progress -= 10
                    }else{
                        self.progress += 10
                    }
                }
                Image.init("turtlerock")
                .cornerRadius(50)
                
            }.padding()
                .navigationBarItems(trailing:
                    HStack.init(content: {
                        Button.init("add") {
                            print("taped add button")
                        }
                        Button.init("more", action: {
                            print("taped more button")
                        })
                        NavigationLink.init(destination: Text("12232")
                        ) {
                            Text("push")
                        }
                        PresentationLink.init(destination:
                            Text("pop 12212123")
                        ) {
                            Text("pop")
                        }
                    })
                        .background(backgroundView)
            )
                .navigationBarTitle("Test Navigation", displayMode: .inline)
        }
        .accentColor(.yellow)
            .onAppear {
                print("app ====")
        }
        .onDisappear {
            print("dis app=====")
        }
        
        
    }
}

#if DEBUG
struct TestView_Previews : PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
#endif
