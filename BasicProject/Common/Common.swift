//
//  Common.swift
//  LoveCat
//
//  Created by jingjun on 2020/10/19.
//

import Foundation
import UIKit
public let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
public let SCREEN_WIDTH  = UIScreen.main.bounds.size.width

public func printLog<N>(_ message:N,fileName:String = #file,methodName:String = #function,lineNumber:Int = #line){
    #if DEBUG
    print("message:\(message)\nway:\(fileName as NSString) methods:\(methodName) line:\(lineNumber)")
    #endif
}

public enum GlobalConstants {
    
    #if DEBUG
    public static let isEnabledDebugShowTimeTouch = true
    #else
    public static let isEnabledDebugShowTimeTouch = false
    #endif
    
    // 2.3.5
    public static let AppVersion = (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? ""
    public static let AppBundleIdentifier = (Bundle.main.infoDictionary?["CFBundleIdentifier"] as? String) ?? ""
    // 235
    public static let AppIntegerVersion = AppVersion.replacingOccurrences(of: ".", with: "", options: .literal, range: nil)
    public static let iOSVersion = UIDevice.current.systemVersion
    public static let AppDisplayName = (Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String) ?? ""
    public static let AppLookLink = (Bundle.main.infoDictionary?["RTAppLookLink"] as? String) ?? ""
    public static let AppDownloadLink = (Bundle.main.infoDictionary?["RTNewAppDownLoadLink"] as? String) ?? ""
    public static let AppStoreDownloadLink = (Bundle.main.infoDictionary?["RTAppDownloadLink"] as? String) ?? ""
    public static let AppBuildVersion = (Bundle.main.infoDictionary?["CFBundleVersion"] as? String) ?? "1000"
}
