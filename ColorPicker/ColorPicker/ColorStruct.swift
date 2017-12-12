//
//  ColorStruct.swift
//  ColorPicker
//
//  Created by Chandler, Jackson C. (MU-Student) on 12/11/17.
//  Copyright © 2017 Chandler, Jackson C. (MU-Student). All rights reserved.
//

import Foundation
import UIKit

struct colorStruct {
    let colorName: String
    let colorValue: UIColor
    init(colorName: String, colorValue: UIColor) {
        self.colorName = colorName
        self.colorValue = colorValue
    }
}
