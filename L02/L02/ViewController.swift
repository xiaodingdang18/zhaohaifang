//
//  ViewController.swift
//  L02
//
//  Created by zhaohf on 16/1/19.
//  Copyright © 2016年 RW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var wv:UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //添加图片
        addImageView()
        
        //设置背景颜色为图片
        patternImageView()
        
    }
    
    func addImageView()
    {
        let img = UIImage(named: "1.png")
        let imageView = UIImageView(image: img)
        self.view.addSubview(imageView)
    }
    
    func patternImageView()
    {
        let image = UIImage(named: "1.png")
       // let imageView = UIImageView(image: image)
        
        let patternColor = UIColor.init(patternImage: image!)
        self.view.backgroundColor = patternColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

