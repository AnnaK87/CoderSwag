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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServie.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productVCsegue", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            productVC.initProduct(forCategory: (sender as! Category))
        }
    }
}

