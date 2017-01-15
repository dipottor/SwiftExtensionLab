//
//  BoolExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 12/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation

// MARK: - Properties
public extension Bool {
    
    // Return 1 if true, or 0 if false.
    public var int: Int {
        return self ? 1 : 0
    }
    //Return inversed value of bool.
    public var toggled: Bool {
        return !self
    }
}
