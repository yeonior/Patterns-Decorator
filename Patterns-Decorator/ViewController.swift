//
//  ViewController.swift
//  Patterns-Decorator
//
//  Created by Ruslan on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var golf: GolfProtocol = Golf()

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var trimLevelLabel: UILabel!
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var trimLevelSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        golf = LifeGolf(decorator: golf)
        updateLabels()
        carImageView.image = UIImage(named: "life_version")!
    }
    
    private func updateLabels() {
        priceLabel.text = "$" + String(golf.getPrice())
        trimLevelLabel.text = golf.getTitle()
    }

    @IBAction func trimLevelSegmentedControlAction(_ sender: UISegmentedControl) {
        
        golf = Golf()
        
        switch sender.selectedSegmentIndex {
        case 0:
            golf = LifeGolf(decorator: golf)
            updateLabels()
            carImageView.image = UIImage(named: "life_version")!
        case 1:
            golf = StyleGolf(decorator: golf)
            updateLabels()
            carImageView.image = UIImage(named: "style_version")!
        case 2:
            golf = RLineGolf(decorator: golf)
            updateLabels()
            carImageView.image = UIImage(named: "r-line_version")!
        default:
            break
        }
    }
}

