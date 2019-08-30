//
//  ViewController.swift
//  DefaultsPractice
//
//  Created by John Yu on 8/29/19.
//  Copyright © 2019 John Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var defaults = UserDefaults()
    @IBOutlet var SliderCollection: [UISlider]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(defaults.object(forKey: "FirstSlider") ?? "No")
    }

    
    @IBAction func handleSlider(_ sender: UISlider) {
        SliderCollection.forEach{slider in
            defaults.set(slider.value, forKey: slider.accessibilityLabel!)
        }
        if(defaults.object(forKey: "FirstSlider") != nil){
            print("it worked")
        }
    }
}

