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
    
    var myData = [MyData](arrayLiteral: MyData(someTitle: "BAZINGA"),
                                    MyData(someTitle: "BADA"),
                                    MyData(someTitle: "BING"),
                                    MyData(someTitle: "BANG"),
                                    MyData(someTitle: "BOOM"))
    
    var initialData = [MyData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        initialData = myData
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = myData[indexPath.row]
        NSLog("You selected cell number: \(indexPath.row)!")
        performSegue(withIdentifier: "SecondVC", sender: data)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.myData.remove(at: indexPath.row)
            self.tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondVC {
            if let d = sender as? MyData {
                destination.myData = d
            }
        }
    }
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        
        let alert = UIAlertController(title: "Reset", message: "Message goes here", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction!) in self.resetTableView()}))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func resetTableView() {
        // reset table view
        self.myData.removeAll()
        self.myData = self.initialData
        self.tableView.reloadData()
    }
    
}

