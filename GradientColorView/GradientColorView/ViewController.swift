//
//  ViewController.swift
//  GradientColorView
//
//  Created by zhaohf on 16/1/20.
//  Copyright © 2016年 RW. All rights reserved.
//实现颜色渐变

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRectMake(80, 120, 200, 200)
        let gradientView = UIView(frame: rect)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.frame
        
        let fromColor = UIColor.yellowColor().CGColor
        let midColor = UIColor.redColor().CGColor
        let toColor = UIColor.purpleColor().CGColor
        
        gradientLayer.colors = [fromColor,midColor,toColor]
        
        gradientView.layer.addSublayer(gradientLayer)
        
        self.view.addSubview(gradientView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

