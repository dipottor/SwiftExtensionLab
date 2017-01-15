//
//  DoubleExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 14/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation


// MARK: - Properties
public extension Double {
    
    // Absolute of double value.
    public var abs: Double {
        return Swift.abs(self)
    }
    
    // Ceil of double value.
    public var ceil: Double {
        return Foundation.ceil(self)
    }
    
    // Radian value of degree input.
    public var degreesToRadians: Double {
        return Double(M_PI) * self / 180.0
    }
    
    // Floor of double value.
    public var floor: Double {
        return Foundation.floor(self)
    }
    
    // Degree value of radian input.
    public var radiansToDegrees: Double {
        return self * 180 / Double(M_PI)
    }
    
    // Random double between two double values.
    ///
    //  - Parameters:
    // min: minimum number to start random from.
    //  max: maximum number random number end before.
    //  Returns: random double between two double values.
    public static func randomBetween(min: Double, max: Double) -> Double {
        let delta = max - min
        return min + Double(arc4random_uniform(UInt32(delta)))
    }
}
