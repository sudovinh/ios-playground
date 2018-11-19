//
//  ViewController.swift
//  SunMoonLight
//
//  Created by mrsudo on 2/7/18.
//  Copyright © 2018 sudovinh. All rights reserved.
// Simple Flashlight App using protocol and enum

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtnLbl: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        // Light OFF
        if switchStatus == .off {
            toggleBtnLbl.setImage(UIImage(named:"offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            onOffLbl.text = "🌚 OFF 🌚"
            onOffLbl.textColor = UIColor.white
            toggleTorch(on: false)
        } else {
            // Light ON
            toggleBtnLbl.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = UIColor.white
            onOffLbl.text = "🌞 ON 🌞"
            onOffLbl.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            toggleTorch(on: true)
        }
    }
    // Turn on camera flashlight must import AVFoundation to use this 
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: AVMediaType.video)
            else {return}
        
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                
                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }
                
                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    

}

