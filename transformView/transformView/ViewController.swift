//
//  ViewController.swift
//  transformView
//
//  Created by zhaohf on 16/1/20.
//  Copyright © 2016年 RW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let rect = CGRectMake(100, 100, 50, 200)
        
        let view = UIView(frame: rect)
        
        view.backgroundColor = UIColor.brownColor()
        self.view.addSubview(view)
        //生成仿射变换变量
        var transform = view.transform
        //旋转45度
        transform = CGAffineTransformRotate(transform, 3.14/4)
        view.transform = transform
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

