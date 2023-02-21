//
//  Menu.swift
//  CollectionView
//
//  Created by Hayk Sakulyan on 19.02.23.
//

import Foundation
import UIKit

struct Group {
    var name: String
    var products: [Product]
}

struct Product {
    var name: String
    var price: Float
    var image: UIImage
}

class Menu {
    var groups =  [Group]()
    init() {
        setup()
    }

    func setup() {
        
        let p1 = Product(name: "product1", price: 100, image: UIImage(named: "p1")!)
        let p2 = Product(name: "product2", price: 110, image: UIImage(named: "p1")!)
        let p3 = Product(name: "product3", price: 120, image: UIImage(named: "p1")!)
        
        let p4 = Product(name: "product4", price: 100, image: UIImage(named: "p2")!)
        let p5 = Product(name: "product5", price: 110, image: UIImage(named: "p2")!)
        let p6 = Product(name: "product6", price: 120, image: UIImage(named: "p2")!)
        
        let p7 = Product(name: "product7", price: 100, image: UIImage(named: "p3")!)
        let p8 = Product(name: "product8", price: 110, image: UIImage(named: "p3")!)
        let p9 = Product(name: "product9", price: 120, image: UIImage(named: "p3")!)
        
        let product1 = [p1, p2, p3]
        let product2 = [p4, p5, p6]
        let product3 = [p7, p8, p9]
        
        let g1 = Group(name: "Pizz", products: product1)
        let g2 = Group(name: "Burger", products: product2)
        let g3 = Group(name: "Cheesburger", products: product3)
        let g4 = Group(name: "Pizz", products: product1)
        let g5 = Group(name: "Burger", products: product2)
        let g6 = Group(name: "Cheesburger", products: product3)
        
        groups = [g1, g2, g3, g4, g5, g6]
    }
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        return ceil(size.width)
    }
}
