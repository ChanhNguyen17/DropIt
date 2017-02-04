//
//  NamedBezierPathsView.swift
//  DropIt
//
//  Created by Chanh Nguyen on 2/4/17.
//  Copyright © 2017 Stanford University. All rights reserved.
//

import UIKit

class NamedBezierPathsView: UIView {

    var bezierPaths = [String: UIBezierPath]() {
        didSet {setNeedsDisplay()}
    }
    
    override func draw(_ rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
