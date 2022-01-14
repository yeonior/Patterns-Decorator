//
//  RLineGolf.swift
//  Patterns-Decorator
//
//  Created by Ruslan on 14.01.2022.
//

import Foundation

class RLineGolf: GolfDecorator {
    
    required init(decorator: GolfProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        super.getTitle() + "" + "R-Line"
    }
    
    override func getPrice() -> Double {
        super.getPrice() + 9000.0
    }
}
