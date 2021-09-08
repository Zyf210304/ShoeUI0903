//
//  Product.swift
//  ShoeUI0903
//
//  Created by 张亚飞 on 2021/9/3.
//

import SwiftUI

struct Product: Identifiable {
    
    var id = UUID().uuidString
    var productImage: String
    var productTitle: String
    var productPrice: String
    var productBG: Color
    var isLiked: Bool = false
    var productRating: Int
}


var ProductsData = [

    Product(productImage: "p1", productTitle: "Nike Air Max20", productPrice: "$240.0", productBG: Color("shoeBG1"), productRating: 4),
    Product(productImage: "p2", productTitle: "Excee Sneakers", productPrice: "$290.0", productBG: Color("shoeBG2"), productRating: 3),
    Product(productImage: "p3", productTitle: "Air Max Motion 2", productPrice: "$180.0", productBG: Color("shoeBG3"), productRating: 2),
    Product(productImage: "p4", productTitle: "To be No.1", productPrice: "$99.0", productBG: Color("shoeBG4"), isLiked: true, productRating: 5),
    Product(productImage: "p5", productTitle: "Nike Pro Max20", productPrice: "$290.0", productBG: Color("shoeBG1"), productRating: 3),
]
