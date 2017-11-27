//
//  ViewController.swift
//  test
//
//  Created by Kenzan Hase on 2017/11/27.
//  Copyright © 2017 Kenzan Hase. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "test",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        rootView!.frame = self.view.frame
        self.view.addSubview(rootView!)
/*
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

