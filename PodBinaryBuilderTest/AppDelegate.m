//
//  AppDelegate.m
//  PodBinaryBuilderTest
//
//  Created by ChildhoodAndy on 2024/11/11.
//

#import "AppDelegate.h"
#import "PodBinaryBuilderTest-Swift.h"

@import SwiftyJSON;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    SwiftForCompile *swifter = [[SwiftForCompile alloc] init];
    [swifter testSwiftyJson];
    
    return YES;
}


@end
