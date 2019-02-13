//
//  Planner.swift
//  Assignment Notebook
//
//  Created by Matthew Harkey on 2/12/19.
//  Copyright © 2019 Matthew Harkey. All rights reserved.
//

import UIKit

class Planner: Codable {
    var className : String
    var dueDate : String
    var description : String
    var image : Data
    
    init(className : String, dueDate: String, description: String, image: Data) {
        self.className = className
        self.dueDate = dueDate
        self.description = description
        self.image = image
    }
}
