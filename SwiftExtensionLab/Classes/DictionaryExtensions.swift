//
//  DictionaryExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 14/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation

// MARK: - Methods
public extension Dictionary {

    //Check if key exists in dictionary.
    //  Parameter key: key to search for
    //  Returns: true if key exists in dictionary.
    func has(key: Key) -> Bool {
        return index(forKey: key) != nil
    }
    
    // JSON Data from dictionary.
    //
    //  Parameter prettify: set true to prettify data (default is false).
    //  Returns: optional JSON Data (if applicable).
    public func jsonData(prettify: Bool = false) -> Data? {
        guard JSONSerialization.isValidJSONObject(self) else {
            return nil
        }
        let options = (prettify == true) ? JSONSerialization.WritingOptions.prettyPrinted : JSONSerialization.WritingOptions()
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: options)
            return jsonData
        } catch {
            return nil
        }
    }
}

// MARK: - Methods (ExpressibleByStringLiteral)
public extension Dictionary where Key: ExpressibleByStringLiteral {
    
    // SwifterSwift: Lowercase all keys in dictionary.
    public mutating func lowercaseAllKeys() {
        for key in self.keys {
            if let lowercaseKey = String(describing: key).lowercased() as? Key {
                self[lowercaseKey] = self.removeValue(forKey: key)
            }
        }
    }
    
}
