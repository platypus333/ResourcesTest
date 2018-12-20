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
    public var completeBack:((String) -> (Void))?

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = arrowImage
        self.view.addSubview(imageView)
        let tap = UITapGestureRecognizer(target: self, action: #selector(backAction))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tap)
    }
    
    var resourcesTestBundle: Bundle{
        let frameworkBundle = Bundle(for: ARHuxingViewController.self)
        let bundleUrl = frameworkBundle.resourceURL?.appendingPathComponent("ResourcesTest.bundle")
        let resourceBundle = Bundle(url: bundleUrl!)
        return resourceBundle!
    }
    
    var arrowImage: UIImage{
        let image = UIImage(named: "add_icon@2x", in: resourcesTestBundle, compatibleWith: nil)
        return image!
    }
    
    @objc func backAction()
    {
        completeBack!("1111")
        self.dismiss(animated: true, completion: nil)
    }
    
}

