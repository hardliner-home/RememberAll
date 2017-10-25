//
//  TabBarController.m
//  RememberAll
//
//  Created by Vladimir Shabanov on 07.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "REMTabBarController.h"

#import "REMMapViewController.h"
#import "REMInfoViewController.h"
#import "REMListViewController.h"
#import "REMSetViewController.h"

@implementation UIViewController  (ViewController)

@end

@implementation REMTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    REMMapViewController *mapController = [[REMMapViewController alloc] init];
    mapController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Map"
                                                             image:[UIImage imageNamed:@"map.png"]
                                                               tag:0];
    
    REMInfoViewController *infoController = [[REMInfoViewController alloc] init];
    infoController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Information"
                                                              image:[UIImage imageNamed:@"info.png"]
                                                                tag:1];
    
    REMListViewController *listController = [[REMListViewController alloc] init];
    listController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"List"
                                                              image:[UIImage imageNamed:@"list.png"]
                                                                tag:2];
    
    REMSetViewController *setController = [[REMSetViewController alloc] init];
    setController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Settings"
                                                             image:[UIImage imageNamed:@"set.png"]
                                                               tag:3];
    
    [self setViewControllers:@[
                               mapController,
                               infoController,
                               listController,
                               setController
                               ]];
}

@end
