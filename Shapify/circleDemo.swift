//
//  circleDemo.swift
//  Shapify
//
//  Created by IT on 11/30/20.
//  Copyright © 2020 IT. All rights reserved.
//

import UIKit

class circleDemo: UIView {

   var path: UIBezierPath!
         
        override init(frame: CGRect) {
            super.init(frame: frame)
        }
         
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
    }
        override func draw(_ rect: CGRect) {
            //self.createTriangle()
            self.path = UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2 - self.frame.size.height/2,
                                                       y: 0.0,
                                                       width: self.frame.size.height,
                                                       height: self.frame.size.height))
               // Specify the fill color and apply it to the path.
               UIColor.orange.setFill()
               path.fill()
            
               // Specify a border (stroke) color.
               UIColor.purple.setStroke()
               path.stroke()

    }
}
