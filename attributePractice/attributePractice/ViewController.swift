//
//  ViewController.swift
//  attributePractice
//
//  Created by John Yu on 8/29/19.
//  Copyright © 2019 John Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainGradient: GradientView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleColorChange(_ sender: UISlider) {
        let red_num = UIColor(red: CGFloat(sender.value), green: 0, blue: 0, alpha: 1)
        let other_color = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        mainGradient.setColor(color1: red_num, color2: other_color)
    }
}


