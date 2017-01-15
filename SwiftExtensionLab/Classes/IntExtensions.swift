//
//  IntExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 14/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation


// MARK: - Properties
public extension Int {
    
    // Absolute value of integer.
    public var abs: Int {
        return Swift.abs(self)
    }
    
    // String with number and current locale currency.
    public var asLocaleCurrency: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        return formatter.string(from: self as NSNumber)!
    }
    
    // Radian value of degree input.
    public var degreesToRadians: Double {
        return Double(M_PI) * Double(self) / 180.0
    }
    
    // Array of digits of integer value.
    public var digits: [Int] {
        var digits: [Int] = []
        for char in String(self).characters {
            if let int = Int(String(char)) {
                digits.append(int)
            }
        }
        return digits
    }
    
    // Number of digits of integer value.
    public var digitsCount: Int {
        return String(self).characters.count
    }
    
    // Check if integer is even.
    public var isEven: Bool {
        return (self % 2) == 0
    }
    
    // Check if integer is odd.
    public var isOdd: Bool {
        return (self % 2) != 0
    }
    
    // Degree value of radian input
    public var radiansToDegrees: Double {
        return Double(self) * 180 / Double(M_PI)
    }
    
    
    // String of format (XXh XXm) from seconds Int
    //eg. 20 sec ago , 1 hour 20 sec ago
    public var timeString: String {
        guard self > 0 else {
            return "0 sec"
        }
        if self < 60 {
            return "\(self) sec"
        }
        if self < 3600 {
            return "\(self / 60) min"
        }
        let hours = self / 3600
        let mins = (self % 3600) / 60
        
        if hours == 0 && mins != 0 {
            return "\(mins) min"
            
        } else if hours != 0 && mins == 0 {
            return "\(hours) h"
            
        } else {
            return "\(hours) h \(mins) m"
        }
    }
    
    // Random integer between two integer values.
    // - Returns: random integer between two integer values.
    public static func randomBetween(min: Int, max: Int) -> Int {
        let delta = max - min
        return min + Int(arc4random_uniform(UInt32(delta)))
    }
}
	
