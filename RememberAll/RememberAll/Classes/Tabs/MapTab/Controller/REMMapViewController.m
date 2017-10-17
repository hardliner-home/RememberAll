//
//  REMMapViewController.m
//  RememberAll
//
//  Created by Vladimir Shabanov on 07.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "REMMapViewController.h"
#import "REMMapTabView.h"

@interface REMMapViewController()

@property (nonatomic, strong) REMMapTabView *view;

@end

@implementation REMMapViewController

@dynamic view;

- (void)loadView {
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:47.23
                                                            longitude:38.89
                                                                 zoom:12];
    
    self.view = [[REMMapTabView alloc] initWithCamera:camera];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view.mapView.settings setAllGesturesEnabled:YES];
}

@end
