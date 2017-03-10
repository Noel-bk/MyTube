//
//  MyData.swift
//  MyTube
//
//  Created by Noel Nolan Masters on 3/10/17.
//  Copyright © 2017 Noel. All rights reserved.
//

import Foundation

class MyData {
    
    private var _someTitle: String!
    
    var someTitle: String {
        return self._someTitle
    }
    
    init(someTitle: String) {
        self._someTitle = someTitle
    }
    
}
