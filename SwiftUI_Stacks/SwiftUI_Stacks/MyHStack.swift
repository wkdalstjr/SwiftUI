//
//  MyHStack.swift
//  SwiftUI_Stacks
//
//  Created by 장민석 on 2022/02/15.
//

import SwiftUI

struct MyHStack : View {
    var body: some View {
        
        HStack(alignment: .bottom) {
            
//            Divider()
            
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
        } // HStack
        .padding()
        .background(Color.green)
        
    }
}

struct MyHStack_Previews: PreviewProvider {
    static var previews: some View {
        MyHStack()
    }
}
