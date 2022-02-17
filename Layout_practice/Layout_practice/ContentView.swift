//
//  ContentView.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/02/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .bottomTrailing) {
             
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack {
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                            
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
                            MyCard(icon: "tray.fill", title: "책상 정리", start: "10 PM", end: "11 PM", bgColor: Color.blue)
                            MyCard(icon: "display", title: "유튜브 시청", start: "8 PM", end: "10 PM", bgColor: Color.orange)
                            MyCard(icon: "gamecontroller.fill", title: "롤 한판", start: "11 PM", end: "12 PM", bgColor: Color.purple)
                            
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
                
            } // Zstack
            .navigationTitle("메인")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
            
        } // NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
