//
//  AppDelegate.m
//  PodBinaryBuilderTest
//
//  Created by ChildhoodAndy on 2024/11/11.
//

#import "AppDelegate.h"
#import "PodBinaryBuilderTest-Swift.h"

@import SwiftyJSON;
@import AFNetworking;
@import ZZKit_Swift;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    SwiftForCompile *swifter = [[SwiftForCompile alloc] init];
    [swifter testSwiftyJson];
    [swifter testZZKit];
    
    return YES;
}


@end
