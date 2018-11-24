//
//  wage.swift
//  Shopping Budget Calculator
//
//  Created by mrsudo on 11/24/18.
//  Copyright © 2018 sudovinh. All rights reserved.
//

import Foundation

class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
