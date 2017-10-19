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

@synthesize slider;




@dynamic view;

- (void)loadView {
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:47.23
                                                            longitude:38.89
                                                                 zoom:slider.value];
    
    self.view = [[REMMapTabView alloc] initWithCamera:camera];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view.mapView.settings setAllGesturesEnabled:YES];
    
    
    CGRect frame = CGRectMake(18.0, 480.0, 200.0, 40.0);
    slider = [[UISlider alloc] initWithFrame:frame];
    [slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [slider setBackgroundColor:[UIColor clearColor]];
    slider.minimumValue = 10;
    slider.maximumValue = 20;
    slider.continuous = YES;
    slider.value = 10;
    [self.view addSubview:slider];
    
}

-(IBAction) sliderAction:(id) sender{
    slider.value = slider.value;
    NSLog(@"%i", slider.value);
}

-(void)viewDidAppear:(BOOL)animated {
    
    locationManager =[[CLLocationManager alloc] init];
    [locationManager requestAlwaysAuthorization];
    
    NSLog(@"latitude %lf longitude %lf", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude);
}

@end
