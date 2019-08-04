//
//  MathLib.swift
//  BMIRechner
//
//  Created by Kilian Kellermann on 20.02.17.
//  Copyright © 2017 Kilian Kellermann. All rights reserved.
//

import Foundation

struct MathLib {
    
    static func calcBMI(forKg kg: Int, andCm cm: Int) -> Int {
        // BMI: 78 / (1,8*1,8) = 24,...
        
        let sizeInMeter = Double(cm) / 100.0
        return Int(ceil(Double(kg) / (sizeInMeter * sizeInMeter)))
    }
}
