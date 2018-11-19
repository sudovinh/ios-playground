//
//  ColorTransferDelegate.swift
//  Color Picker
//
//  Created by mrsudo on 2/7/18.
//  Copyright © 2018 sudovinh. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
    
}
