//
//  ContentView.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/02/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
         
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                    
                } //Hstack
                .padding(20)
             
                Text("wkdalstjr 할 일 목록")
                    .font(.system(size: 33))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                
                
                ScrollView {
                    VStack {
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    } // Vstack
                    .padding()
                    
                } // ScrollView
                
            } //Vstack

            
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
                .padding(10)
                .shadow(radius: 20)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
