//
//  DesignableView.swift
//  ColorPractice
//
//  Created by John Yu on 8/21/19.
//  Copyright © 2019 John Yu. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView
{
//    @IBInspectable var gradientColor1: UIColor = UIColor.white {
//        didSet{
//            self.setGradient()
//        }
//    }
    
    @IBInspectable var gradientColor2: UIColor = UIColor.white {
        didSet{
            self.setGradient()
        }
    }
    
    @IBInspectable var gradientStartPoint: CGPoint = .zero {
        didSet{
            self.setGradient()
        }
    }
    
    @IBInspectable var gradientEndPoint: CGPoint = CGPoint(x: 0, y: 1) {
        didSet{
            self.setGradient()
        }
    }
    
    private func setGradient()
    {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
        gradientLayer.startPoint = CGPoint(x: -1, y:0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 2)
        gradientLayer.frame = self.bounds
        if let topLayer = self.layer.sublayers?.first, topLayer is CAGradientLayer
        {
            topLayer.removeFromSuperlayer()
        }
        self.layer.addSublayer(gradientLayer)
    }
}
