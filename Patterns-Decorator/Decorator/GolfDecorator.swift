//
//  GolfDecorator.swift
//  Patterns-Decorator
//
//  Created by Ruslan on 13.01.2022.
//

import Foundation

class GolfDecorator: GolfProtocol {
    
    private let decoratorType: GolfProtocol
    
    required init(decorator: GolfProtocol) {
        self.decoratorType = decorator
    }
    
    func getTitle() -> String {
        decoratorType.getTitle()
    }
    
    func getPrice() -> Double {
        decoratorType.getPrice()
    }
    
    
}
