//
//  CLLocation+BearingTest.h
//  Demo
//
//  Created by Vid Tadel on 7/26/10.
//  Copyright 2010 GuerillaCode. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <CoreLocation/CoreLocation.h>
#import "CLLocation+Bearing.h"

@interface CLLocation_BearingTestCase : SenTestCase {
	
	CLLocation *home;
	CLLocationBearing bearing;

}

- (void)testTrue;

@end
