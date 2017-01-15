//
//  UIColorExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 15/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import UIKit

public extension UIColor {
    
   
    func colorWithRGB(red:Int,green:Int,blue:Int) -> UIColor {
        return UIColor.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1)
    }
    
    //MARK: HEX
    func convertHexToRGB(hex:UInt32) -> UIColor {
        return self.changeHexColorCodeToRGB(hex: hex, alpha: 1)
    }
    func hexStringToRGB (hexString: String) -> UIColor {
        
        var hexColorString = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexColorString.hasPrefix("#") {
            
            hexColorString = hexColorString.substring(from: hexColorString.startIndex)
        }
        
        if hexColorString.characters.count != 6 {
            let error: NSError? = nil
            NSException.raise(NSExceptionName(rawValue: "Hex Color String Error"), format: "Error: Invalid hex color string. Please ensure hex color string has 6 elements", arguments: getVaList([error ?? "nil"]))
        }
        
        var hexColorRGBValue:UInt32 = 0
        Scanner(string: hexColorString).scanHexInt32(&hexColorRGBValue)
        return self.changeHexColorCodeToRGB(hex: hexColorRGBValue, alpha: 1)
    }
    
    //MARK: Private helper methods
    private
    func changeHexColorCodeToRGB(hex:UInt32, alpha: CGFloat) -> UIColor {
        
        return UIColor(   red: CGFloat((hex & 0xFF0000) >> 16)/255.0,
                          green: CGFloat((hex & 0xFF00) >> 8)/255.0,
                          blue: CGFloat((hex & 0xFF))/255.0,
                          alpha: alpha)
    }
}
