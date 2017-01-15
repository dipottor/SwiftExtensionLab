//
//  FloatExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 14/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation

// MARK: - Properties
public extension Float {
    
    // Absolute of float value.
    public var abs: Float {
        return Swift.abs(self)
    }
    
    // Ceil of float value.
    public var ceil: Float {
        return Foundation.ceil(self)
    }
    
    // Radian value of degree input.
    public var degreesToRadians: Float {
        return Float(M_PI) * self / 180.0
    }
    
    // Floor of float value.
    public var floor: Float {
        return Foundation.floor(self)
    }
    
    // Degree value of radian input.
    public var radiansToDegrees: Float {
        return self * 180 / Float(M_PI)
    }
    
    // Random float between two float values.
    // Returns: random float between two Float values.
    public static func randomBetween(min: Float, max: Float) -> Float {
        let delta = max - min
        return min + Float(arc4random_uniform(UInt32(delta)))
    }

}
