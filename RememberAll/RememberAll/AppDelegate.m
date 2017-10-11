//
//  AppDelegate.m
//  RememberAll
//
//  Created by Vladimir Shabanov on 06.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "AppDelegate.h"


@import GoogleMaps;
@import GooglePlaces;
@import GooglePlacePicker;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    UIViewController * TabBarController = [[UITabBarController alloc] init];
    self.window.rootViewController = TabBarController;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [GMSServices provideAPIKey:@"AIzaSyBWHw5Ij85CjOBv51ZfXyOE-MOJNxy52uw"];
    [GMSPlacesClient provideAPIKey:@"AIzaSyBWHw5Ij85CjOBv51ZfXyOE-MOJNxy52uw"];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];

    return YES;
}


@end
