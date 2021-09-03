//
//  Home.swift
//  ShoeUI0903
//
//  Created by 张亚飞 on 2021/9/3.
//

import SwiftUI

struct Home: View {
    
    //Matched geometry Effect
    @Namespace var animation
    @EnvironmentObject var baseData: baseViewModel
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 15) {
                
                HStack {
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "line.horizontal.3.decrease")
                            .resizable()
                            .frame(width: 35, height: 25)
                            
                    }

                   
                    Spacer()
                    
                    Button {
                        
                    } label: {
                                           
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            
                    }
                }
                .foregroundColor(.black)
                .overlay(
                    Image(systemName: "applelogo")
                        .font(.title)
                )
                
                
                HStack {
                    
                    Text("Our Products")
                        .font(.title.bold())
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        HStack(spacing: 3) {
                            
                            Text("Sort by")
                                .font(.caption.bold())
                            
                            Image(systemName: "chevron.down")
                                .font(.caption.bold())
                        }
                        .foregroundColor(.gray)
                    }

                }
                .padding(.top, 25)
                
                //custom segment tab...
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 18) {
                        
                        //segmentButton
                        SegmentButton(image: "photo", title: "Sneakers")
                        SegmentButton(image: "applewatch", title: "Watch")
                        SegmentButton(image: "car", title: "car")
                    }
                    .padding(.vertical)
                }
               
                
                //product View
                let colunms = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
                
                //Grid view
                LazyVGrid(columns: colunms, spacing: 18) {
                    
                    // Products...
                    ForEach(products) { product in
                        
                        
                    }
                }
                
            }
            .padding()
        }
        
    }
    
    @ViewBuilder
    func SegmentButton(image:String, title: String) -> some View {
        
        Button {
            
            withAnimation{baseData.homeTab = title}
        } label: {
            
            HStack(spacing: 8) {
                
                Image(systemName: image)
                    .font(.title2)
                
                Text(title)
                    .font(.system(size: 12.5))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .background(
            
                ZStack {
                    
                    if baseData.homeTab == title {
                    
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                    }
                }
            )
        }

        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
