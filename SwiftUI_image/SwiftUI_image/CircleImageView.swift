//
//  CircleImageView.swift
//  SwiftUI_image
//
//  Created by 장민석 on 2022/02/14.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size : 200))
//            .foregroundColor(.red)
//            .shadow(color: .gray, radius: 2, x: 5, y: 10)
//
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 0)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.3)
            ) // 투명도 조절 느낌
            .overlay(Circle().stroke(Color.blue, lineWidth: 2))
            .overlay(
                Text("Bottom")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
            )
        
        
//            .aspectRatio(contentMode: .fill)
            //.frame(width: 200, height: 300)
//            .clipped()
            //.edgesIgnoringSafeArea(.all)
      }
}


struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
