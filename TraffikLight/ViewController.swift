//
//  ViewController.swift
//  TraffikLight
//
//  Created by Виталий Бобрик on 1.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    
    @IBOutlet var colorChangeButton: UIButton!
    
    private var colorTraffikLight: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorChangeButton.layer.cornerRadius = 10
        colorChangeButton.setTitle("START", for: .normal)
        
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.width / 2
        
    }

    @IBAction func changeCollorButton() {
        colorChangeButton.setTitle("NEXT", for: .normal)
        
        switch colorTraffikLight {
        case "RED":
            redColor.alpha = 0.3
            yellowColor.alpha = 1
            colorTraffikLight = "YELLOW"
        case "YELLOW":
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
            colorTraffikLight = "GREEN"
        default:
            redColor.alpha = 1
            greenColor.alpha = 0.3
            colorTraffikLight = "RED"
        }
    }
    
}

