//
//  DropItViewController.swift
//  DropIt
//
//  Created by Chanh Nguyen on 2/4/17.
//  Copyright © 2017 Stanford University. All rights reserved.
//

import UIKit

class DropItViewController: UIViewController {

    @IBOutlet weak var gameView: DropItView! {
        didSet {
            gameView.addGestureRecognizer(
                UITapGestureRecognizer(
                    target: self,
                    action: #selector(addDrop(_:))
                )
            )
            gameView.addGestureRecognizer(
                UIPanGestureRecognizer(
                    target: gameView,
                    action: #selector(DropItView.grabDrop(recognizer:))
                )
            )
        }
    }
    
    func addDrop(_ recognizer: UITapGestureRecognizer) {
        if recognizer.state == .ended {
            gameView.addDrop()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        gameView.animating = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        gameView.animating = false
    }
    
}
