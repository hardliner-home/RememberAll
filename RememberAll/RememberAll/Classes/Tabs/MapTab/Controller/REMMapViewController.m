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

@property(nonatomic) int value;
@property(nonatomic) int minimumValue;
@property(nonatomic) int maximumValue;

@end

@implementation REMMapViewController

@dynamic view;

- (void)loadView {
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:47.23
                                                            longitude:38.89
                                                                 zoom:10.f];
    
    self.view = [[REMMapTabView alloc] initWithCamera:camera];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view.mapView.settings setAllGesturesEnabled:YES];
    
    
    CGRect frame = CGRectMake(18.0, 480.0, 200.0, 40.0);
    self.slider = [[UISlider alloc] initWithFrame:frame];
    [self.slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [self.slider setBackgroundColor:[UIColor clearColor]];
    self.slider.minimumValue = 10;
    self.slider.maximumValue = 20;
    self.slider.continuous = YES;
    [self.view addSubview:self.slider];
    
}

- (void)sliderAction:(id)sender {
    NSLog(@"%f", self.slider.value);
    
    [self.view.mapView animateToZoom:self.slider.value];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _locationManager = [[CLLocationManager alloc] init];
    [_locationManager requestAlwaysAuthorization];
    
    NSLog(@"latitude %lf longitude %lf", _locationManager.location.coordinate.latitude, _locationManager.location.coordinate.longitude);
}

@end
