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
        imageView.image = arrowImage
        self.view.addSubview(imageView)
    }
    
    var ResourcesTestBundle: Bundle{
        return Bundle.init(path:Bundle.init(for: ARHuxingViewController.self).path(forResource: "ResourcesTest", ofType: "bundle")!)!
    }
    
    var arrowImage: UIImage{
        let path = Bundle.main.path(forResource: "ResourcesTest", ofType: "bundle")
        let bundle = Bundle(path: path!)
        let file = bundle?.path(forResource: "add_icon@2x", ofType: "png")
        return UIImage(contentsOfFile: file!)!
//        return (UIImage.init(contentsOfFile: self.ResourcesTestBundle.path(forResource: "add_icon@2x", ofType: "png")!)?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate))!
    }
}

