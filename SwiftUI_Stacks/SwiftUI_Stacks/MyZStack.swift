//
//  MyZStack.swift
//  SwiftUI_Stacks
//
//  Created by 장민석 on 2022/02/15.
//

import SwiftUI

struct MyZStack : View {
    var body: some View {
        
        ZStack {
//            Rectangle()
//                .frame(width:150, height: 150)
//                .foregroundColor(.blue)
//            Rectangle()
//                .frame(width:100, height: 100)
//                .foregroundColor(.red)
//            Rectangle()
//                .frame(width:50, height: 50)
//                .foregroundColor(.yellow)
            
            Rectangle()
                .frame(width:50, height: 50)
                .foregroundColor(.yellow)
                .zIndex(2)
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(.red)
                .zIndex(1)
            Rectangle()
                .frame(width:150, height: 150)
                .foregroundColor(.blue)
                .zIndex(0)
        }
        
    }
}


struct MyZStack_Previews: PreviewProvider {
    static var previews: some View {
        MyZStack()
    }
}
