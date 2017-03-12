//
//  SecondVC.swift
//  MyTube
//
//  Created by Noel Nolan Masters on 3/12/17.
//  Copyright © 2017 Noel. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var secondLbl: UILabel!
    
    private var _myData: MyData!
    
    var myData: MyData {
        get {
            return _myData
        }
        set {
            _myData = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondLbl.text = myData.someTitle
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
