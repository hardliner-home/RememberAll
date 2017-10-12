//
//  TabBarController.m
//  RememberAll
//
//  Created by Vladimir Shabanov on 07.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "ViewController.h"

@implementation UIViewController  (ViewController)

@end

//@interface UIImage {
//
//
//}
//@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MapViewController* vc1 = [[MapViewController alloc] init];
    InfoViewController* vc2 = [[InfoViewController alloc] init];
    ListViewController* vc3 = [[ListViewController alloc] init];
    SetViewController* vc4 = [[SetViewController alloc] init];
    
    NSArray* TabBarControllers = @[vc1, vc2, vc3, vc4];
    
    vc1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Map" image:nil
                      /*[UIImage imageNamed:@"map.png"]*/
                                                     tag:1];
    vc2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Information" image:nil
                      /*[UIImage imageNamed:@"info.png"]*/
                                                     tag:2];
    vc3.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Listing" image:nil
                      /*[UIImage imageNamed:@"list.png"]*/
                                                     tag:3];
    vc4.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Settings" image:nil
                      /*[UIImage imageNamed:@"set.png"]*/
                                                     tag:4];
    
    [self setViewControllers:TabBarControllers];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
