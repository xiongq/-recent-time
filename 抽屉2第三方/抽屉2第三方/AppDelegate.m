//
//  AppDelegate.m
//  抽屉2第三方
//
//  Created by xiong on 15/10/21.
//  Copyright © 2015年 x. All rights reserved.
//

#import "AppDelegate.h"

#import "leftViewController.h"
#import "rightViewController.h"
#import "firstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:[[firstViewController alloc] init]];
    leftViewController *left = [[leftViewController alloc] init];
    rightViewController *right = [[rightViewController alloc] init];
    RESideMenu *slideMenu = [[RESideMenu alloc] initWithContentViewController:navi leftMenuViewController:left rightMenuViewController:right];
    slideMenu.backgroundImage = [UIImage imageNamed:@"Stars"];
    slideMenu.menuPreferredStatusBarStyle = 1;
    slideMenu.delegate =self;
    slideMenu.contentViewShadowColor = [UIColor clearColor];
    slideMenu.contentViewShadowOffset = CGSizeMake(0, 0);
//    slideMenu.contentViewShadowRadius = 12;
    slideMenu.contentViewShadowEnabled = YES;
    self.window.rootViewController = slideMenu;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
