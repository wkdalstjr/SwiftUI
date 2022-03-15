//
//  MyCustomTabView.swift
//  Layout_practice
//
//  Created by 장민석 on 2022/03/15.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case profile
}

struct MyCustomTabView : View {
    
    @State var tabIndex : TabIndex
    
    @State var largerScale : CGFloat = 1.4
    
    func changeMyView(tabIndex : TabIndex) -> MyView{
        switch tabIndex {
        case .home:
            return MyView(title: "홈", bgColor: .green)
        case .cart:
            return MyView(title: "장바구니", bgColor: .purple)
        case .profile:
            return MyView(title: "프로필", bgColor: .blue)
        default:
            return MyView(title: "홈", bgColor: .green)
        }
    }
    
    func changeIconColor(tabIndex: TabIndex) -> Color{
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
        default:
            return Color.green
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat{
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return geometry.size.width / 3
        default:
            return 0
        }
    }
    
    var body: some View{
        
        GeometryReader{ geometry in
            ZStack(alignment: .bottom){
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, geometry: geometry), y: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 0)
                    .foregroundColor(.white)
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        Button(action:{
                            print("홈버튼 클릭")
                            
                            withAnimation{
                                self.tabIndex = .home
                            }
                            self.tabIndex = .home
                        }){
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3,
                                height: 50)
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                        }.background(.white)
                        
                        Button(action:{
                            print("장바구니 버튼 클릭")
                            
                            withAnimation{
                                self.tabIndex = .cart
                            }
                            self.tabIndex = .cart
                        }){
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3,
                                height: 50)
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                        }.background(.white)
                        
                        Button(action:{
                            print("프로필 버튼 클릭")
                            
                            withAnimation{
                                self.tabIndex = .profile
                            }
                            self.tabIndex = .profile
                        }){
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3,
                                height: 50)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                        }.background(.white)
                    }// HStack
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 20)
                        
                }// VStack
                
                
            }// ZStack
            
        }.edgesIgnoringSafeArea(.all)
        
        
    }
}


struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
