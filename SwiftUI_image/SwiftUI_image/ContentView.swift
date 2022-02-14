//
//  ContentView.swift
//  SwiftUI_image
//
//  Created by 장민석 on 2022/02/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1300)
            
                
                CircleImageView()
                
                HStack {
                    NavigationLink(destination: MyWebview(urlToLoad: "https://github.com/wkdalstjr")
                                    .edgesIgnoringSafeArea(.all)){
                        Text("Git으로 가기")
                            .font(.system(size : 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebview(urlToLoad: "https://open.kakao.com/o/gqCd0wJd")
                                    .edgesIgnoringSafeArea(.all)){
                        Text("오픈카톡방 가기")
                            .font(.system(size : 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.orange)
                            .cornerRadius(20)
                    }
                } // HStack
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
