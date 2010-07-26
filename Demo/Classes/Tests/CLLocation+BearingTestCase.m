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
	CLLocation *test = [[CLLocation alloc] initWithLatitude:80.0 longitude:0.0];
	bearing = [home bearingToLocation:test];
	
	NSAssert(bearing == CLLocationBearingNorth, @"Bearing should be north, but is %d", bearing);
	
	//and the other way around
	bearing = [test bearingToLocation:home];
	NSAssert(bearing == CLLocationBearingSouth, @"Bearing should be south, but is %d", bearing);
	[test release];
	
}

- (void)testSouth {
	CLLocation *south = [[CLLocation alloc] initWithLatitude:-80.0 longitude:0.0];
	bearing = [home bearingToLocation:south];
	
	NSAssert(bearing == CLLocationBearingSouth, @"Bearing should be south, but is %d", bearing);
	[south release];
}

- (void)testEast {
	CLLocation *east = [[CLLocation alloc] initWithLatitude:0.0 longitude:90.0];
	bearing = [home bearingToLocation:east];
	
	NSAssert(bearing == CLLocationBearingEast, @"Bearing should be east, but is %d", bearing);
	[east release];
}

- (void)testWest {
	CLLocation *west = [[CLLocation alloc] initWithLatitude:0.0 longitude:-90.0];
	bearing = [home bearingToLocation:west];
	
	NSAssert(bearing == CLLocationBearingWest, @"Bearing should be west, but is %d", bearing);
	[west release];
}

- (void)testNorthEast {
	CLLocation *northeast = [[CLLocation alloc] initWithLatitude:45.0 longitude:90.0];
	bearing = [home bearingToLocation:northeast];
	
	NSAssert(bearing == CLLocationBearingNorthEast, @"Bearing should be northeast, but is %d", bearing);
	[northeast release];
}

- (void)testSouthEast {
	CLLocation *southeast = [[CLLocation alloc] initWithLatitude:-45.0 longitude:90.0];
	bearing = [home bearingToLocation:southeast];
	
	NSAssert(bearing == CLLocationBearingSouthEast, @"Bearing should be southeast, but is %d", bearing);
	[southeast release];
}

- (void)testSouthWest {
	CLLocation *southwest = [[CLLocation alloc] initWithLatitude:-45.0 longitude:-90.0];
	bearing = [home bearingToLocation:southwest];
	
	NSAssert(bearing == CLLocationBearingSouthWest, @"Bearing should be southwest, but is %d", bearing);
	[southwest release];
}

- (void)testNorthWest {
	CLLocation *northwest = [[CLLocation alloc] initWithLatitude:45.0 longitude:-90.0];
	bearing = [home bearingToLocation:northwest];
	
	NSAssert(bearing == CLLocationBearingNorthWest, @"Bearing should be northwest, but is %d", bearing);
	[northwest release];
}


@end
