//
//  BaseView.swift
//  ShoeUI0903
//
//  Created by 张亚飞 on 2021/9/3.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var baseData = baseViewModel()
    
    //hiding tab bar...
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        TabView(selection: $baseData.currentTab) {
            
            Home()
                .environmentObject(baseData)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Home)
            
            Text("Heart")
                .tag(Tab.Heart)
            
            
            Text("ClipBoard")
                .tag(Tab.ClipBoard)
            
            Text("Person")
                .tag(Tab.Person)
        }
        .overlay(
        
            //custom Tab Bar...
            HStack(spacing: 0) {
            
                TabButton(Tab: .Home)
        
                TabButton(Tab: .Heart)
                .offset(x: -10)
            
                Button {
                    
                    
                } label: {
                    
                    Image(systemName: "cart.circle")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(.white)
                        .padding(18)
                        .offset(x: -1)
                        .background(Color("DarkBlue"))
                        .clipShape(Circle())
                    //shadow
                        .shadow(color: Color.black.opacity(0.04), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.black.opacity(0.04), radius: 5, x: -5, y: -5)
                }
                .offset(y: -30)

                TabButton(Tab: .ClipBoard)
                .offset(x: 10)
            
                TabButton(Tab: .Person)
            
            }
                .background(
                    Color.white
                        .clipShape(CustomCurveShape())
                        .shadow(color: Color.black.opacity(0.04), radius: 5, x: -5, y: -5)
                        .ignoresSafeArea(.container, edges: .bottom)
                )
            //hiding tab bar when detail opens..
                .offset(y: baseData.showDetail ? 200 : 0)
                
            
            
            ,alignment: .bottom
        )
        
    }
    
    @ViewBuilder
    func TabButton(Tab: Tab) -> some View {
        
        Button {
            
            withAnimation {
                
                baseData.currentTab = Tab
            }
        } label: {
            
            Image(systemName: Tab.rawValue)
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(baseData.currentTab == Tab ? Color("DarkBlue") : Color.gray.opacity(0.5))
                .frame(maxWidth: .infinity)
        }

    }
    
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
