//
//  ViewController.swift
//  UITapGestureView
//
//  Created by zhaohf on 16/1/20.
//  Copyright © 2016年 RW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "1")
        
        let rect = CGRectMake(50, 100, 100, 100)
        let imageView = UIImageView(frame: rect)
        imageView.image = image
        self.view.addSubview(imageView)
        
        imageView.userInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: "tapImageView")
        gesture.numberOfTapsRequired = 1
       
        imageView.addGestureRecognizer(gesture)
        
        let longGesture = UILongPressGestureRecognizer(target: self, action: "longPressImageView")
        imageView.addGestureRecognizer(longGesture)
        
        let doubleGesture = UITapGestureRecognizer(target: self, action: "doubleTap")
        doubleGesture.numberOfTapsRequired = 2
        doubleGesture.numberOfTouchesRequired = 1
        
        imageView.addGestureRecognizer(doubleGesture)
        
        //延迟单击事件执行，如果不是双击手势，再执行单击手势，解决单击双击手势冲突
         gesture.requireGestureRecognizerToFail(doubleGesture)
        
        
        
    }

    func doubleTap()
    {
        let alertView = UIAlertController(title: "information", message: "double tap", preferredStyle: UIAlertControllerStyle.Alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (action) -> Void in
            
        }
        alertView.addAction(OKAction)
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    func longPressImageView()
    {
        let alertView = UIAlertController(title: "information", message: "long press", preferredStyle: UIAlertControllerStyle.Alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (action) -> Void in
            
        }
        alertView.addAction(OKAction)
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    func tapImageView()
    {
        let alertView = UIAlertController(title: "information", message: "tap image view", preferredStyle: UIAlertControllerStyle.Alert)
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {(action) in
        }
        
        alertView.addAction(OKAction)
        
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

