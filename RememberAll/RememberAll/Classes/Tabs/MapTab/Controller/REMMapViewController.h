//
//  REMMapViewController.h
//  RememberAll
//
//  Created by Vladimir Shabanov on 07.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface REMMapViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}

-(void) startLocation;
-(void) didUpdateLocations;

@property (nonatomic, strong) UISlider *slider;
@property(assign, nonatomic) CLLocationDistance distanceFilter;
@property(assign, nonatomic) CLLocationAccuracy desiredAccuracy;

@end


