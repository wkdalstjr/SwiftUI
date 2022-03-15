//
//  MyView.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/03/15.
//

import SwiftUI

struct MyView : View {
    
    var title: String
    
    var bgColor: Color
    
    var body: some View{
        
        ZStack{
            bgColor
//                .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }.animation(.none)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: Color.orange)
    }
}
