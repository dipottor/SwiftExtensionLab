//
//  CharacterExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 14/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation


// MARK: - Properties
public extension Character {
    
    //Check if character is number.
    public var isNumber: Bool {
        return Int(String(self)) != nil
    }
    
    ///Integer from character (if applicable).
    public var int: Int? {
        return Int(String(self))
    }
}
