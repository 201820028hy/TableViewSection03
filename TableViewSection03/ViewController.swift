//
//  ViewController.swift
//  TableViewSection03
//
//  Created by dit03 on 2019. 4. 30..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    var num = ["0", "1", "2", "3", "4"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return num.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ID", for: indexPath)
        let row = indexPath.row
        
        cell.textLabel?.text = "Section : \(indexPath.section)"
        cell.detailTextLabel?.text = "Row : \(num[row])"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
    }


}
