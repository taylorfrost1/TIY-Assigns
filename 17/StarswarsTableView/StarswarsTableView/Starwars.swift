//
//  Starwars.swift
//  StarswarsTableView
//
//  Created by Taylor Frost on 6/15/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import Foundation

struct Star {
    
    var name:String = ""
    
    var imageName:String = ""
    
    init(name: String, imageName:String){
        self.name = name
        self.imageName = imageName
    }
}