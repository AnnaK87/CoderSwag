//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Anna Kaukh on 11/20/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
}
