//
//  ViewController.swift
//  createmenusample
//
//  Created by Ron Rith on 4/29/18.
//  Copyright © 2018 Ron Rith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    @IBOutlet weak var menuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
    }
    @IBAction func openMenu(_ sender: Any) {
        if(menuShowing){
            leadingConstraint.constant =  -140
        } else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        menuShowing = !menuShowing
    }
    

}

