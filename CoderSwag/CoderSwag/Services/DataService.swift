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
                              Category(title: "DIGITAL", imageName: "digital.png")
                              ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
