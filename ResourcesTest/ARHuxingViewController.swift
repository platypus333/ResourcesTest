//
//  ViewController.swift
//  ResourcesTest
//
//  Created by EJU on 2018/12/19.
//  Copyright © 2018 EJU. All rights reserved.
//

import UIKit

public class ARHuxingViewController: UIViewController {
    
    public var test:String = "test"
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = UIImage(named: "add_icon@2x")
        self.view.addSubview(imageView)
    }
    
}

