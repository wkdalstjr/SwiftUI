//
//  MyProfileView.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/02/18.
//

import SwiftUI

struct MyProfileView : View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View{
        
            ScrollView{
                    VStack{
                        
                        MyCircleImageView(imageString: "dev_bori")
                        .padding(.vertical, 20)
                    
                        Text("개발하는 장보리 ")
                            .font(.system(size: 30))
                            .fontWeight(.black)
                        
                        Spacer().frame(height: 20)
                        
                        Text("구독 좋아요 부탁드립니다!")
                            .font(.system(size: 25))
                            .fontWeight(.black)
                        
                        HStack{
                            
                                Text("구독하러 가기")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.red)
                                    .cornerRadius(20)
                            
                                Text("오픈깨톡방 가기")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.orange)
                                    .cornerRadius(20)
                            
                        } // Hstack
                        .padding(20)
                        Spacer()
                        
                    }// Vstack
                } // ScrollView
            
                .navigationBarTitle("내 프로필")
                .navigationBarItems(trailing:
                    NavigationLink(destination:
                        Text("설정화면입니다.")
                            .font(.largeTitle)
                            .fontWeight(.black)
                    ){
                       Image(systemName: "gear")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                    }
                )
                .onAppear{
                    self.isNavigationBarHidden = false
                }
        
            
   
    } // View
}


struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
