//
//  REMMapViewController.m
//  RememberAll
//
//  Created by Vladimir Shabanov on 07.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "REMMapViewController.h"
#import "REMMapTabView.h"

@interface REMMapViewController () <CLLocationManagerDelegate>

@property (nonatomic, strong) REMMapTabView *view;

@end

@implementation REMMapViewController

@dynamic view;

- (void)loadView {
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:47.23
                                                            longitude:38.89
                                                                 zoom:16.f];
    
    self.view = [[REMMapTabView alloc] initWithCamera:camera];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.mapView.myLocationEnabled = YES;
    
    [self.view.mapView.settings setAllGesturesEnabled:YES];
    
    [self startLocation];
    
    CGRect frame = CGRectMake(70.0, 480.0, 200.0, 40.0);
    self.slider = [[UISlider alloc] initWithFrame:frame];
    [self.slider addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    [self.slider setBackgroundColor:[UIColor clearColor]];
    self.slider.minimumValue = 16;
    self.slider.maximumValue = 17;
    self.slider.continuous = YES;
    [self.view addSubview:self.slider];
}

- (void)sliderAction:(id)sender {
    NSLog(@"%f", self.slider.value);
    
    [self.view.mapView animateToZoom:self.slider.value];
}
     
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation* location = [locations lastObject];
    NSDate* eventDate = location.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (fabs(howRecent) < 15.0) {
        NSLog(@"latitude %+.6f, longitude %+.6f\n",
              location.coordinate.latitude,
              location.coordinate.longitude);
    }
}

- (void)startLocation {
    if([CLLocationManager locationServicesEnabled]){
        if(!locationManager)
            locationManager = [[CLLocationManager alloc] init];
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.distanceFilter = 100;
        if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
            [locationManager requestWhenInUseAuthorization];
        }
        [locationManager startUpdatingLocation];
    }
    
}
@end
