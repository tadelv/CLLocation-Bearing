//
//  CLLocation+Bearing.h
//
//  Created by Vid Tadel on 6/21/10.
//  Copyright 2010 GuerillaCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef enum {
	CLLocationBearingNorth,
	CLLocationBearingEast,
	CLLocationBearingSouth,
	CLLocationBearingWest,
	CLLocationBearingUnknown = -1,
} CLLocationBearing;

@interface CLLocation (Bearing) 

- (CLLocationBearing)bearingToLocation:(CLLocation *)location;

@end
