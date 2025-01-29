//
//  ContentView.swift
//  VisionProWindow
//
//  Created by Wenflow on 2025/1/29.
//

import SwiftUI
import RealityKit
import RealityKitContent

//2.ContentView -> 改名StartingWindow
struct StartingWindow: View {
    
    //5. 透過 @Environment 取得 openWindow 來開啟新的視窗
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        //1.建立image跟Buttons
        VStack(spacing: 30) {
            //Image
            Image(systemName: "visionpro")
                .font(.system(size: 150))
                .symbolEffect(.pulse)
                .bold()
            
            //Button
            HStack{
                Button("Window1"){
                    openWindow(id : "Window 1") //6.按下按鈕時，開"Window1"
                }
                
                Button("Window2"){
                    openWindow(id : "Window 2") //按下按鈕時，開啟"Window2"
                }
            }
        }
       
            
    }
}

#Preview(windowStyle: .automatic) {
    StartingWindow()
}
