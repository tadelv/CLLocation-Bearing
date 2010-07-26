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
	CLLocationBearingNorthEast,
	CLLocationBearingEast,
	CLLocationBearingSouthEast,
	CLLocationBearingSouth,
	CLLocationBearingSouthWest,
	CLLocationBearingWest,
	CLLocationBearingNorthWest,
	CLLocationBearingUnknown = -999,
} CLLocationBearing;

@interface CLLocation (Bearing) 

/**
 * returns one of the above values,
 * which can be than used to your liking
 *
 * the value returned is the bearing you should take from the receiver
 * to the argument, to reach it
 */
- (CLLocationBearing)bearingToLocation:(CLLocation *)location;

@end
