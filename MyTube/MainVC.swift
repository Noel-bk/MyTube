//
//  ViewController.swift
//  MyTube
//
//  Created by Noel Nolan Masters on 2/5/17.
//  Copyright © 2017 Noel. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myData = [MyData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // TODO
        // Logic goes here..
        let d1 = MyData(someTitle: "Howdy")
        myData.append(d1)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath as IndexPath) as? MyTableViewCell {
            let data = myData[indexPath.row]
            cell.updateUI(myData: data)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
}

