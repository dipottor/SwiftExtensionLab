//
//  ArrayExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 12/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation

public extension Array {
    
    /** Random item from array.*/
    
    public func randomItem() -> Element? {
        guard self.count > 0 else {
            return nil
        }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

// MARK: - Properties (Equatable)
public extension Array where Element: Equatable {
    
    /// Return array with all duplicates items removed from it.
    public var withoutDuplicates: [Element] {
        return reduce([]){ ($0 as [Element]).contains($1) ? $0 : $0 + [$1] }
    }
    
}
