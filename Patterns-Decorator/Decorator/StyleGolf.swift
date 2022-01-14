//
//  StyleGolf.swift
//  Patterns-Decorator
//
//  Created by Ruslan on 14.01.2022.
//

import Foundation

class StyleGolf: GolfDecorator {
    
    required init(decorator: GolfProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        super.getTitle() + " " + "Style"
    }
    
    override func getPrice() -> Double {
        super.getPrice() + 34000.0
    }
}
