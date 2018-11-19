//
//  WelcomeVC.swift
//  swoosh-app
//
//  Created by mrsudo on 2/7/18.
//  Copyright © 2018 sudovinh. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet weak var swooshLogo: UIImageView!
    @IBOutlet weak var background: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
// Programmtic way of sizing up to the screen 
//            swooshLogo.frame = CGRect(
//            x: view.frame.size.width / 2 - swooshLogo.frame.size.width / 2,
//            y: 50,
//            width: swooshLogo.frame.size.width,
//            height: swooshLogo.frame.size.height)
//
//        background.frame = view.frame;
    }

    // Back Button
    @IBAction func unwindWelcome(unwindSegue: UIStoryboardSegue) {
        
    }

}

