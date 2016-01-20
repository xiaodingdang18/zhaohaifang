//
//  ViewController.swift
//  DeviceOrientation
//
//  Created by zhaohf on 16/1/19.
//  Copyright © 2016年 RW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //判断设备方向
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "orientationChanged:", name: UIDeviceOrientationDidChangeNotification, object: nil)
        
        
        
        //添加视图
        let btnAdd = UIButton(frame: CGRectMake(30,400,100,100))
        btnAdd.backgroundColor = UIColor.grayColor()
        btnAdd.setTitle("Add", forState: UIControlState.Normal)
        btnAdd.addTarget(self, action: "addView:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btnAdd)
        
        //交换视图
        let switchBtn = UIButton(frame:CGRectMake(30,500,100,100))
        switchBtn.backgroundColor = UIColor.greenColor()
        switchBtn.setTitle("Switch", forState: UIControlState.Normal)
        switchBtn.addTarget(self, action: "switchView:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(switchBtn)
        
        
    }

    func addView(sender:UIButton)
    {
        let rect1 = CGRectMake(0,0, 200, 200)
        let view1 = UIView(frame: rect1)
        view1.bounds = CGRectMake(500, -200, 600, 400)
        view1.backgroundColor = UIColor.purpleColor()
        view.tag = 100
        
        self.view.addSubview(view1)
        
        let rect = CGRectMake(0, 50, 200, 200)
        let view2 = UIView(frame: rect)
        view2.backgroundColor = UIColor.yellowColor()
        view2.tag = 200
        self.view.addSubview(view2)
    }
    
    func switchView(sender:UIButton)
    {
        let view2 = self.view.viewWithTag(200)
        self.view.sendSubviewToBack(view2!)
    }
    func orientationChanged(notification:NSNotification)
    {
        let device = UIDevice.currentDevice()
        switch device.orientation
        {
        case .Portrait:
                print("device portraint ")
            
        case .PortraitUpsideDown:
            
                print("device PortraitUpsideDown")
            
        case .LandscapeLeft:
            
                print("device LandscapeLeft")
            
        case .LandscapeRight:
            
                print("device Landscaperight")
            
        case .FaceUp:
            
                print("device FaceUp")
            
        case .FaceDown:
            
                print("Device FaceDown")
            
        default:
            print("unknow ")
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

