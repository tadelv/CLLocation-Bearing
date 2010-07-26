//
//  CLLocation+BearingTest.m
//  Demo
//
//  Created by Vid Tadel on 7/26/10.
//  Copyright 2010 GuerillaCode. All rights reserved.
//

#import "CLLocation+BearingTestCase.h"

@implementation CLLocation_BearingTestCase

- (void)setUp {
	//Check if for every lat,lng pair, we get the correct value
	home = [[CLLocation alloc] initWithLatitude:0.0 longitude:0.0];
	bearing = -1;
}

- (void)tearDown {
	[home release];
}

- (void)testTrue {
	NSAssert(YES, @"This is true");
}

- (void)testNorth {
	CLLocation *north = [[CLLocation alloc] initWithLatitude:80.0 longitude:0.0];
	bearing = [home bearingToLocation:north];
	
	NSAssert(bearing == CLLocationBearingNorth, @"Bearing should be north");
	[north release];
	
}

- (void)testSouth {
	CLLocation *south = [[CLLocation alloc] initWithLatitude:-80.0 longitude:0.0];
	bearing = [home bearingToLocation:south];
	
	NSAssert(bearing == CLLocationBearingSouth, @"Bearing should be south");
	[south release];
}

- (void)testEast {
	CLLocation *east = [[CLLocation alloc] initWithLatitude:0.0 longitude:90.0];
	bearing = [home bearingToLocation:east];
	
	NSAssert(bearing == CLLocationBearingEast, @"Bearing should be east");
	[east release];
}

- (void)testWest {
	CLLocation *west = [[CLLocation alloc] initWithLatitude:0.0 longitude:-90.0];
	bearing = [home bearingToLocation:west];
	
	NSAssert(bearing == CLLocationBearingWest, @"Bearing should be west");
	[west release];
}

@end
