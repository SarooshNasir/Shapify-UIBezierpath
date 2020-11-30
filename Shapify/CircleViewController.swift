//
//  CircleViewController.swift
//  Shapify
//
//  Created by IT on 11/17/20.
//  Copyright © 2020 IT. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Circle"
    }
        
        // Do any additional setup after loading the view.
      override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
         
            let width: CGFloat = 240.0
            let height: CGFloat = 160.0
         
            let demoView = circleDemo(frame: CGRect(x: self.view.frame.size.width/2 - width/2,
                                                  y: self.view.frame.size.height/2 - height/2,
                                                  width: width,
                                                  height: height))
         
            self.view.addSubview(demoView)
            self.view.backgroundColor = .clear
        }
    
}
