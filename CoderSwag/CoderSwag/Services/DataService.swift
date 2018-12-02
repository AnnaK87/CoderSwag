//
//  DataService.swift
//  CoderSwag
//
//  Created by Anna Kaukh on 11/22/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import Foundation

class DataServie {
    
    static let instance = DataServie()
    
    private var categories = [Category(title: "HOODIES", imageName: "hoodies.png"),
                              Category(title: "HATS", imageName: "hats.png"),
                              Category(title: "SHIRTS", imageName: "shirts.png"),
                              Category(title: "DIGITAL", imageName: "digital.png")]
    
    private var hats = [Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
                        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
                        Product(title: "Devslopes Logo Hat White", price: "$15", imageName: "hat03.png"),
                        Product(title: "Devslopes Logo Snapback", price: "$24", imageName: "hat04.png")]
    
    private let hoodies = [Product(title: "Devslopes Logo Hoodie Gray", price: "$32", imageName: "hoodie01.png"),
                           Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
                           Product(title: "Devslopes Hoodie Gray", price: "$34", imageName: "hoodie03.png"),
                           Product(title: "Devslopes Hoodie Black", price: "$34", imageName: "hoodie04.png")]
    
    private let shirts = [Product(title: "Devslopes Logo Shirt Black", price: "$16", imageName: "shirt01.png"),
                          Product(title: "Devslopes Badge Shirt Light Gray", price: "$17", imageName: "shirt02.png"),
                          Product(title: "Devslopes Logo Shirt Red", price: "$17", imageName: "shirt03.png"),
                          Product(title: "Hustle Delegate Gray ", price: "$18", imageName: "shirt04.png"),
                          Product(title: "Kickflip Studious Black", price: "$19", imageName: "shirt05.png")]
    
    private let digital = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategory title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "Digital":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getDigitalGoods() -> [Product] {
        return digital
    }
}
