//
//  AppDelegate.m
//  siruiShortcut
//
//  Created by yangrui on 2019/9/3.
//  Copyright © 2019 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (BOOL)application:(UIApplication *)application
    continueUserActivity:(nonnull NSUserActivity *)userActivity
 restorationHandler:(nonnull void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler{
    
    ViewController *vc = application.keyWindow.rootViewController;
    
    UIViewController *redVC = [UIViewController new];
    redVC.view.backgroundColor = [UIColor redColor];
    [vc presentViewController:redVC animated:YES completion:nil];
    
//    [vc sayHi];
    return YES;
}
@end
