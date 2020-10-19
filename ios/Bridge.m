//
//  Bridge.m
//  SdkTestApp
//
//  Created by Tanay Parekhji on 10/19/20.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"
@interface
RCT_EXTERN_MODULE(Bridge, NSObject)
//RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(connectToWifi:(NSString *)ssid password:(NSString *)password callback: (RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(osTest: (RCTResponseSenderBlock)callback)
//RCT_EXTERN_METHOD(testFunc: callback: (RCTResponseSenderBlock)callback)
//RCT_EXTERN_METHOD(testFunc: (response:  (RCTResponseSenderBlock)callback))

@end
