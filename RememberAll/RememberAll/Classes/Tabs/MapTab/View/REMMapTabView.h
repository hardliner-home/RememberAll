//
//  REMMapTabView.h
//  RememberAll
//
//  Created by Viktor Shabanov on 18.10.2017.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface REMMapTabView : UIView

@property (nonatomic, strong, readonly) GMSMapView *mapView;

- (instancetype)initWithCamera:(GMSCameraPosition *)camera;

@end
