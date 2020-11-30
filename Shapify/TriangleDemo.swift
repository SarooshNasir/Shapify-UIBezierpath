//
//  TriangleDemo.swift
//  Shapify
//
//  Created by IT on 11/30/20.
//  Copyright © 2020 IT. All rights reserved.
//

import UIKit

class TriangleDemo: UIView {

    var path: UIBezierPath!
     
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func createTriangle() {
        path = UIBezierPath()
        path.move(to: CGPoint(x: self.frame.width/2, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.close()
    }
    override func draw(_ rect: CGRect) {
        self.createTriangle()
        
           // Specify the fill color and apply it to the path.
           UIColor.orange.setFill()
           path.fill()
        
           // Specify a border (stroke) color.
           UIColor.purple.setStroke()
           path.stroke()

}
}
