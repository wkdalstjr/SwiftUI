//
//  MyVStack.swift
//  SwiftUI_Stacks
//
//  Created by 장민석 on 2022/02/15.
//

import SwiftUI

struct MyVStack: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            
//            Spacer()
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
            
            Divider() // VStack 안에서 위치 조절 가능 (선이 생김)
                .opacity(0) // 뭔지 모를 선 투명하게 만듦
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            Spacer()
                .frame(height: 50)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
//            Spacer()
                
        } // VStack
        .frame(width: 300)
        .background(Color.green)
    }
}

struct MyVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyVStack()
    }
}
