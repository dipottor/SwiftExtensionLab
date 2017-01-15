//
//  SwiftExtensions.swift
//  SwiftExtensionsLab
//
//  Created by RaviDip on 14/01/17.
//  Copyright © 2017 RaviDip. All rights reserved.
//

import Foundation
import UIKit
// MARK: - Properties
//  Common usefull properties and methods.
public struct SwiftExtensions {
    
    #if !os(macOS)
    // App's name (if applicable).
    public static var appDisplayName: String? {
        return Bundle.main.infoDictionary?[kCFBundleNameKey as String] as? String
    }
   
    //  Screen height.
    public static var screenHeight: Float {
        #if os(iOS) || os(tvOS)
            return Float(UIScreen.main.bounds.height)
        #elseif os(watchOS)
            return currentDevice.screenBounds.height
        #endif
    }
    
    //  StatusBar height
    public static var statusBarHeight: CGFloat {
        return UIApplication.shared.statusBarFrame.height
    }
    
    // Shared instance of current device.
    public static var currentDevice: UIDevice {
        return UIDevice.current
    }
    
    // Current device name.
    public static var deviceName: String {
        return currentDevice.name
    }
    
    // Check if application is running on simulator (read-only).
    public static var isRunningOnSimulator: Bool {
      
        #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
            return true
        #else
            return false
        #endif
    }
    // Key window (read only, if applicable).
    public static var keyWindow: UIView? {
        return UIApplication.shared.keyWindow
    }
    #endif
}
