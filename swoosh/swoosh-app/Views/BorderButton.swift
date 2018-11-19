//
//  BorderButton.swift
//  swoosh-app
//
//  Created by mrsudo on 2/7/18.
//  Copyright © 2018 sudovinh. All rights reserved.
//
// Create a button with a border

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
