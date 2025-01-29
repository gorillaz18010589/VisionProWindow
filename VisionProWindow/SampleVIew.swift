//
//  SampleVIew.swift
//  VisionProWindow
//
//  Created by wenflow on 2025/1/29.
//

import SwiftUI

//7.建立一個動態圓圈View
struct SampleVIew: View {
    
    var color: Color
    var text: String
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(color)
            
            Text(text)
                .font(.extraLargeTitle)
        }.padding(50)
    }
}

#Preview {
    SampleVIew(color: .blue, text: "你好")
}
