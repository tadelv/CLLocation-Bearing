//
//  CLLocation+Bearing.m
//
//  Created by Vid Tadel on 6/21/10.
//  Copyright 2010 GuerillaCode. All rights reserved.
//

#import "CLLocation+Bearing.h"


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
	double bearing = atan2(y, x);
	float bearingDegrees = RadiansToDegrees(bearing);
	bearingDegrees = (int)bearingDegrees % 360;
	bearingDegrees = abs(bearingDegrees);
	if (bearingDegrees >= 315 && bearingDegrees < 45) {
		return CLLocationBearingNorth;
	}
	else if (bearingDegrees >= 45 && bearingDegrees < 135) {
		return CLLocationBearingEast;
	}
	else if (bearingDegrees >= 135 && bearingDegrees < 225) {
		return CLLocationBearingSouth;
	}
	else if (bearingDegrees >= 225 && bearingDegrees < 315) {
		return CLLocationBearingWest;
	}
	
	return CLLocationBearingUnknown;
}



@end
