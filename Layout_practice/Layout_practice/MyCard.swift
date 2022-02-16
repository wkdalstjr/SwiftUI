//
//  MyBasicCard.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/02/15.
//

import SwiftUI

struct MyCard : View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View {
        
        HStack(spacing: 20) {
            
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading ,spacing: 0) {
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    
                Spacer().frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
            
        
        } // Hstack
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
        
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "message.fill", title: "check message", start: "9 AM", end: "10 AM", bgColor: Color.purple)
    }
}
