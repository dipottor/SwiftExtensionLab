//
//  UITextViewExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 15/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//


import UIKit

extension UITextView {
   
    //Add done button on keyboard
    
    public func addDoneButton(_ barStyle: UIBarStyle = .default, title: String? = nil) {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            UIBarButtonItem(title: title ?? "Done", style: .done, target: self, action: #selector(resignFirstResponder))
        ]
        keyboardToolbar.barStyle = barStyle
        keyboardToolbar.sizeToFit()
        inputAccessoryView = keyboardToolbar
    }
    
}
