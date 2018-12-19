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
        imageView.image = getImage(imageName: "add_icon@2x", bundleName: "ResourcesTest", podName: "ResourcesTest")
        self.view.addSubview(imageView)
    }
    
    func getBundle(bundleName:String, podName:String) -> Bundle?
    {
        var bundleName = bundleName
        var podName = podName
        if bundleName == "" && podName == ""
        {
            return nil
        }
        else if bundleName == ""
        {
            bundleName = podName
        }
        else if podName == ""
        {
            podName = bundleName
        }
        
        if bundleName.contains(".bundle")
        {
            bundleName = bundleName.components(separatedBy: ".bundle").first!
        }
        
        var associateBundleURL = Bundle.main.url(forResource: bundleName, withExtension: "bundle")
        if associateBundleURL == nil
        {
            associateBundleURL = Bundle.main.url(forResource: "Frameworks", withExtension: nil)
            associateBundleURL = associateBundleURL?.appendingPathComponent(podName)
            associateBundleURL = associateBundleURL?.appendingPathExtension("framework")
            let associateBunle = Bundle(url: associateBundleURL!)
            associateBundleURL = associateBunle?.url(forResource: bundleName, withExtension: "bundle")
            return nil
        }
        else
        {
            return Bundle(url: associateBundleURL!)!
        }
    }
    
    func getImage(imageName:String,bundleName:String, podName:String) -> UIImage?
    {
        let bundle = getBundle(bundleName:bundleName, podName:podName)
        if bundle != nil
        {
            return UIImage(contentsOfFile: (bundle?.path(forResource: imageName, ofType: "png"))!)
        }
        return nil
    }
}

