//
//  REMMapTabView.m
//  RememberAll
//
//  Created by Viktor Shabanov on 18.10.2017.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "REMMapTabView.h"

@implementation REMMapTabView

- (instancetype)initWithCamera:(GMSCameraPosition *)camera {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        _mapView = [GMSMapView mapWithFrame:CGRectZero
                                     camera:camera];
        [self addSubview:self.mapView];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
 
    self.mapView.frame = self.bounds;
}

@end
