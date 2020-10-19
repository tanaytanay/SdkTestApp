//
//  Bridge.swift
//  SdkTestApp
//
//  Created by Tanay Parekhji on 10/19/20.
//

import Foundation
import RealmDemo
import RealmDemo2

@objc(Bridge)
class Bridge: NSObject {
  private var count = 1

//  @objc
//  func constantsToExport() -> [AnyHashable : Any]! {
//    return [
//      "number": 123.9,
//      "string": "foo",
//      "boolean": true,
//      "array": [1, 22.2, "33"],
//      "object": ["a": 1, "b": 2]
//    ]
//  }
//  
//  @objc
//  func getCount(_ callback: RCTResponseSenderBlock) {
//    callback([count])
//  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return false
  }
  @objc func connectToWifi(_ ssid : String, password : String, callback:@escaping (_ String: Any) -> ()){
    WifiSDK.shared.scanWifi(passwordsList: ["123","admin@123","testPassword"]) { data in
      print(data)
      callback([data])
//      if let tempdata = data as? [String: String]{
//        let jsonData = tempdata.map { $0.0 + "=" + $0.1 }.joined(separator: ";")
//        callback(jsonData)
//
//      }


    }


//    WifiSDK.connectWifi(ssid: ssid, password: password) { (result) in
//      print(result)
//      print(WifiSDK.isConnectedToVpn, "VPN")
//      WifiSDK.getRouterIpAddressString { (gateway) in
//        print(gateway)
//        callback(gateway)
//      }
//    }
  }
  
  @objc func osTest( _ callback:@escaping (_ String: Any) -> ()) {
    OSSDK.shared.performOSTest() { data in
      print(data)
      callback([data])
//      if let tempdata = data as? [String: String]{
//        let jsonData = tempdata.map { $0.0 + "=" + $0.1 }.joined(separator: ";")
//        callback(jsonData)
//
//      }
     
      
    }
    
    
//    WifiSDK.connectWifi(ssid: ssid, password: password) { (result) in
//      print(result)
//      print(WifiSDK.isConnectedToVpn, "VPN")
//      WifiSDK.getRouterIpAddressString { (gateway) in
//        print(gateway)
//        callback(gateway)
//      }
//    }
  }
//  @objc
//  func testFunc(response: @escaping  (_ String: Any) -> ()) {
//    WifiSDK.shared.scanWifi(passwordsList: ["123","admin@123","testPassword"]) { data in
//      print(data)
//    }
//  }

// now try
// does this
}
