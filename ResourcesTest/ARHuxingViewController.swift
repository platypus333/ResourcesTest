//
//  ViewController.swift
//  ResourcesTest
//
//  Created by EJU on 2018/12/19.
//  Copyright © 2018 EJU. All rights reserved.
//

import UIKit

class ARHuxingViewController: UIViewController {

    public var test:String = "test"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.image = getImage("add_icon")
        self.view.addSubview(imageView)
    }

    private func getImage(_ name:String) -> UIImage{
        let currentBundle = Bundle(path: Bundle(for: ARHuxingViewController.self).path(forResource: "ResourcesTest", ofType: "bundle")!)
        return UIImage(contentsOfFile: (currentBundle?.path(forResource: name, ofType: "png"))!)!
    }

}

