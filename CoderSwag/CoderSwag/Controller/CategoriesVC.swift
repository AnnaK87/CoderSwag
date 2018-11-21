//
//  ViewController.swift
//  CoderSwag
//
//  Created by Anna Kaukh on 11/20/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServie.instance.getCategories().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
          let category = DataServie.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
             return cell
        } else {
            return CategoryCell()
        }
       
    }
}

