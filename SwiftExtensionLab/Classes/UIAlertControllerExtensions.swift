//
//  UIAlertControllerExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 15/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import UIKit

public extension UIAlertController {
    
    //TODO:
    public convenience init?(title: String, message: String) {
        
        self.init()
        
        let alertController = UIAlertController(title: message, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        UIApplication.shared.keyWindow?.rootViewController?.present(self, animated: true, completion: nil)
    }

}
