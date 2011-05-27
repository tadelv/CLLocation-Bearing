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
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"North" isEqualToString: bearingString], @"Bearing string should be North, but is %@", bearingString);
	
	
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
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"South" isEqualToString: bearingString], @"Bearing string should be South, but is %@", bearingString);
}

- (void)testEast {
	CLLocation *east = [[CLLocation alloc] initWithLatitude:0.0 longitude:90.0];
	bearing = [home bearingToLocation:east];
	
	NSAssert(bearing == CLLocationBearingEast, @"Bearing should be east, but is %d", bearing);
	[east release];
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"East" isEqualToString: bearingString], @"Bearing string should be East, but is %@", bearingString);
}

- (void)testWest {
	CLLocation *west = [[CLLocation alloc] initWithLatitude:0.0 longitude:-90.0];
	bearing = [home bearingToLocation:west];
	
	NSAssert(bearing == CLLocationBearingWest, @"Bearing should be west, but is %d", bearing);
	[west release];
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"West" isEqualToString: bearingString], @"Bearing string should be West, but is %@", bearingString);
}

- (void)testNorthEast {
	CLLocation *northeast = [[CLLocation alloc] initWithLatitude:45.0 longitude:90.0];
	bearing = [home bearingToLocation:northeast];
	
	NSAssert(bearing == CLLocationBearingNorthEast, @"Bearing should be northeast, but is %d", bearing);
	[northeast release];
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"NorthEast" isEqualToString: bearingString], @"Bearing string should be NorthEast, but is %@", bearingString);
}

- (void)testSouthEast {
	CLLocation *southeast = [[CLLocation alloc] initWithLatitude:-45.0 longitude:90.0];
	bearing = [home bearingToLocation:southeast];
	
	NSAssert(bearing == CLLocationBearingSouthEast, @"Bearing should be southeast, but is %d", bearing);
	[southeast release];
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"SouthEast" isEqualToString: bearingString], @"Bearing string should be SouthEast, but is %@", bearingString);
}

- (void)testSouthWest {
	CLLocation *southwest = [[CLLocation alloc] initWithLatitude:-45.0 longitude:-90.0];
	bearing = [home bearingToLocation:southwest];
	
	NSAssert(bearing == CLLocationBearingSouthWest, @"Bearing should be southwest, but is %d", bearing);
	[southwest release];
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"SouthWest" isEqualToString: bearingString], @"Bearing string should be SouthWest, but is %@", bearingString);
}

- (void)testNorthWest {
	CLLocation *northwest = [[CLLocation alloc] initWithLatitude:45.0 longitude:-90.0];
	bearing = [home bearingToLocation:northwest];
	
	NSAssert(bearing == CLLocationBearingNorthWest, @"Bearing should be northwest, but is %d", bearing);
	[northwest release];
	
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"NorthWest" isEqualToString: bearingString], @"Bearing string should be NorthWest, but is %@", bearingString);
}

- (void)testBearingToString {
	CLLocation *northwest = [[CLLocation alloc] initWithLatitude:45.0 longitude:-90.0];
	bearing = [home bearingToLocation:northwest];
	NSString *bearingString = NSLocalizedStringFromBearing(bearing);
	STAssertTrue([@"NorthWest" isEqualToString: bearingString], @"Bearing string should be NorthWest, but is %@", bearingString);
}

@end
