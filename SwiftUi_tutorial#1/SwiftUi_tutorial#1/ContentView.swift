//
//  ContentView.swift
//  SwiftUi_tutorial#1
//
//  Created by 장민석 on 2022/02/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            MyVStackView()
            MyVStackView()
            MyVStackView()
        
        }
        .padding(30)
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
