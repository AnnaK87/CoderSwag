//
//  Category.swift
//  CoderSwag
//
//  Created by Anna Kaukh on 11/22/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
