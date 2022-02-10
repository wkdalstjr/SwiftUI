//
//  MyVStackView.swift
//  SwiftUi_tutorial#1
//
//  Created by 장민석 on 2022/02/10.
//

import SwiftUI

struct MyVStackView: View {
    
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }
        .background(Color.red)
    }
}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
            MyVStackView()
    }
}
