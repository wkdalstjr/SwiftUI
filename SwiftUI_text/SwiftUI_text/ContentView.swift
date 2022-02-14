//
//  ContentView.swift
//  SwiftUI_text
//
//  Created by 장민석 on 2022/02/11.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse : Bool = false

    var number : Int = 123
    
    var body: some View {
        
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,")
                .tracking(0) // 글자 사이 간격
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil) // 줄 제한 nil : 제한없음
                .lineSpacing(10) // 띄어쓰기 간격
                .truncationMode(.tail) // 짤리는 부분을 정할 수 있다.
                .shadow(color: Color.red, radius: 3.5, x: 0, y: 10) // 그림자 생성
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding(20)
                .background(Color.green)
                .cornerRadius(20)
            
            Text("안녕하세요!")
                .font(.system(.body, design: .rounded))
                .fontWeight(.black)
                .padding(20)
                .background(Color.blue)
                .cornerRadius(20)
                
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자입니다 : \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
