//
//  REMMapViewController.h
//  RememberAll
//
//  Created by Vladimir Shabanov on 07.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@import GoogleMaps;
@import GooglePlaces;
@import GooglePlacePicker;

@interface REMMapViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}

@property (nonatomic, strong) UISlider *slider;

@end


