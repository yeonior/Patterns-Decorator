//
//  LifeGolf.swift
//  Patterns-Decorator
//
//  Created by Ruslan on 14.01.2022.
//

import Foundation

class LifeGolf: GolfDecorator {
    
    required init(decorator: GolfProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        super.getTitle() + " " + "Life"
    }
    
    override func getPrice() -> Double {
        super.getPrice() + 31000.0
    }
}
