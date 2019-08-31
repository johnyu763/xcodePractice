//
//  ViewController.swift
//  attributePractice2
//
//  Created by John Yu on 8/30/19.
//  Copyright © 2019 John Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var MainGradients: [GradientView]!
    var defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if(defaults.object(forKey: "redValue") != nil)
        {
            MainGradients.forEach{grad in
                grad.setColor(color1: UIColor(red: CGFloat(defaults.float(forKey: "redValue")), green: 0, blue: 0, alpha: 1), color2: UIColor.white)
            }
        }
    }
    
      
}

