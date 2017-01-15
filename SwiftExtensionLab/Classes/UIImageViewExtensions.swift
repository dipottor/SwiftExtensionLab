//
//  UIImageViewExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 15/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    func roundImageView() {
        
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2;
    }
}
