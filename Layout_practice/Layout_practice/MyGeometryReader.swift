//
//  MyGeometryReader.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/02/22.
//

import SwiftUI

struct MyGeometryReader: View {
    var body: some View {
        
        GeometryReader{ geometry in
            
            HStack(spacing: 0) {
                
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(.white)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 100)
//                    .foregroundColor(.white)
//                    .background(Color.purple)
                
            }.background(Color.yellow)
            
        }.background(.black)
        
        
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
