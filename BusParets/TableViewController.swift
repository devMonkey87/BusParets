//
//  TableViewController.swift
//  BusParets
//
//  Created by Jose Antonio Landete Muñoz on 22/09/2019.
//  Copyright © 2019 devMonkey87. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{

    

    @IBOutlet weak var tablita: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        


        
    }
    
    
    // MARK: - Table view datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        cell.textLabel?.text = "Henlo daddo"
        
        cell.detailTextLabel?.text = "dafac \(indexPath)"
        return cell
    }
    
    @IBAction func test(_ sender: UIButton) {
        
       
    }
    
  

}
