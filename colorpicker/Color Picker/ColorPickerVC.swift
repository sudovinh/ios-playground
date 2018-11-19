//
//  ColorPickerVC.swift
//  Color Picker
//
//  Created by mrsudo on 2/7/18.
//  Copyright © 2018 sudovinh. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func colorBtnWasPressed(sender: UIButton) {
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }

    }

}
