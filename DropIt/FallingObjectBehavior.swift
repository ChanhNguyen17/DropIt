//
//  FallingObjectBehavior.swift
//  DropIt
//
//  Created by Chanh Nguyen on 2/4/17.
//  Copyright © 2017 Stanford University. All rights reserved.
//

import UIKit

class FallingObjectBehavior: UIDynamicBehavior {
    
    private let gravity = UIGravityBehavior()
    
    private let collider: UICollisionBehavior = {
        let collider = UICollisionBehavior()
        collider.translatesReferenceBoundsIntoBoundary = true
        return collider
    }()
    
    override init() {
        super.init()
        addChildBehavior(gravity)
        addChildBehavior(collider)
    }
    
    func addItem(_ item: UIDynamicItem) {
        gravity.addItem(item)
        collider.addItem(item)
    }
    
    func removeItem(_ item: UIDynamicItem) {
        gravity.removeItem(item)
        collider.removeItem(item)
    }
}
