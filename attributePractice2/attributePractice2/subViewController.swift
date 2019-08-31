//
//  subViewController.swift
//  attributePractice2
//
//  Created by John Yu on 8/30/19.
//  Copyright © 2019 John Yu. All rights reserved.
//

import UIKit

class subViewController : ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func handleColorChange(_ sender: UISlider) {
        MainGradients.forEach{grad in
            defaults.set(sender.value, forKey: "redValue")
            grad.setColor(color1: UIColor(red: CGFloat(defaults.float(forKey: "redValue")), green: 0, blue: 0, alpha: 1), color2: UIColor.white)
        }
    }
}
