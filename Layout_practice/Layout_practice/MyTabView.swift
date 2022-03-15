//
//  MyTabView.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/03/15.
//

import SwiftUI

struct MyTabView : View {
    var body: some View{
        
        TabView{
            // 보여질 화면
//            Text("1번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            MyView(title: "1번", bgColor: .red)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            
//            Text("2번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            MyView(title: "2번", bgColor: .orange)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            
//            Text("3번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            MyView(title: "3번", bgColor: .blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
