//
//  VisionProWindowApp.swift
//  VisionProWindow
//
//  Created by wenflow on 2025/1/29.
//

import SwiftUI

@main
struct VisionOS_WindowsApp: App {
    
    var body: some Scene {
        WindowGroup {
            //3.回到VisionOs_WindowsApp,將ContentView 改成StartingWindow
            StartingWindow()
//            ContentView()
        }
        .defaultSize(width: 600, height: 450) //設定window寬高
        
        //4.WindowGroup 建立兩個window1, window2 多個視窗
        WindowGroup(id : "Window 1"){
            //7.設定window1 SampleVIew
            SampleVIew(color: .orange, text: "Window 1")
        }
        
        WindowGroup(id : "Window 2"){
            SampleVIew(color: .blue, text: "Window 1")
        }
    }
}
