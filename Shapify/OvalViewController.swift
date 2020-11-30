//
//  OvalViewController.swift
//  Shapify
//
//  Created by IT on 11/17/20.
//  Copyright © 2020 IT. All rights reserved.
//

import UIKit

class OvalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Oval"

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
     
        let width: CGFloat = 240.0
        let height: CGFloat = 160.0
     
        let demoView = OvalDemo(frame: CGRect(x: self.view.frame.size.width/2 - width/2,
                                              y: self.view.frame.size.height/2 - height/2,
                                              width: width,
                                              height: height))
     
        self.view.addSubview(demoView)
        self.view.backgroundColor = .clear
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
