//
//  CLLocation+Bearing.m
//
//  Created by Vid Tadel on 6/21/10.
//  Copyright 2010 GuerillaCode. All rights reserved.
//

#import "CLLocation+Bearing.h"

CGFloat DegreesToRadians(CGFloat degrees);
CGFloat RadiansToDegrees(CGFloat radians);

NSString *NSLocalizedStringFromBearing(CLLocationBearing bearing) {
    NSString *key = nil;
    switch (bearing) {
        case CLLocationBearingEast:
            key = @"East";
            break;
        case CLLocationBearingNorth:
            key = @"North";
            break;
        case CLLocationBearingNorthEast:
            key = @"NorthEast";
            break;
        case CLLocationBearingNorthWest:
            key = @"NorthWest";
            break;
        case CLLocationBearingSouth:
            key = @"South";
            break;
        case CLLocationBearingSouthEast:
            key = @"SouthEast";
            break;
        case CLLocationBearingSouthWest:
            key = @"SouthWest";
            break;
        case CLLocationBearingWest:
            key = @"West";
            break;
        case CLLocationBearingUnknown:
            key = @"Unknown Direction";
            break;
        default:
			key = @"Unknown Direction";
			break;
    }
    
    return NSLocalizedString(key, nil);
}


@implementation CLLocation (Bearing)

CGFloat DegreesToRadians(CGFloat degrees) {
	return degrees * M_PI / 180;
}

CGFloat RadiansToDegrees(CGFloat radians)
{
	return radians * 180 / M_PI;
}

- (CLLocationBearing)bearingToLocation:(CLLocation *)location {
	float lat1 = DegreesToRadians(self.coordinate.latitude);
	float lng1 = DegreesToRadians(self.coordinate.longitude);
	float lat2 = DegreesToRadians(location.coordinate.latitude);
	float lng2 = DegreesToRadians(location.coordinate.longitude);
	float deltalng = lng2 - lng1;
	double y = sin(deltalng) * cos(lat2);
	double x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(deltalng);
	double bearing = atan2(y, x) + 2 * M_PI;
	float bearingDegrees = RadiansToDegrees(bearing);
	bearingDegrees = (int)bearingDegrees % 360;
	return round(bearingDegrees/45.0);
}



@end
