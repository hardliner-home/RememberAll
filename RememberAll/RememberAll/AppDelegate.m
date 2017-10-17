//
//  AppDelegate.m
//  RememberAll
//
//  Created by Vladimir Shabanov on 06.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"


@import GoogleMaps;
@import GooglePlaces;
@import GooglePlacePicker;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [GMSServices provideAPIKey:@"AIzaSyCx5u_V-oTXjK1jCjCShCeykTy4_ayJms4"];
    [GMSPlacesClient provideAPIKey:@"AIzaSyC234gydXtYVtib5JQDIx2VHt2N4ThwVnQ"];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[ViewController alloc] init];
    
    [self.window makeKeyAndVisible];

    return YES;
}


@end
