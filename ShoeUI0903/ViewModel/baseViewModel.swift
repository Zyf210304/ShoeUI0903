//
//  baseViewModel.swift
//  ShoeUI0903
//
//  Created by 张亚飞 on 2021/9/3.
//

import SwiftUI

class baseViewModel: ObservableObject{
   
    // Tab Bar...
    @Published var currentTab: Tab = .Home
    
    @Published var homeTab = "Sneakers"
    
    //detail view properties
    @Published var currentProduct: Product?
    @Published var showDetail = false
}


// enum case for tab items
enum Tab: String {
    
    case Home = "house"
    case Heart = "heart.circle"
    case ClipBoard = "paperclip.circle"
    case Person = "person.circle"
}
