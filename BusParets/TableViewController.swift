//
//  TableViewController.swift
//  BusParets
//
//  Created by Jose Antonio Landete Muñoz on 22/09/2019.
//  Copyright © 2019 devMonkey87. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    @IBOutlet weak var tablita: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tablita.delegate = self
        tablita.dataSource = self

        
    }
    
    @IBAction func test(_ sender: UIButton) {
        
        print("ok")
    }
    
  

}
