#CLLocation+Bearing - adds bearing to your locations! :)

##What is it?
CLLocation+Bearing is a small category for CLLocation class that adds bearing methods to CLLocation objects. 

Distributed under MIT License (in the LICENSE file).

##How to use

- Simply copy (or reference) the files CLLocation+Bearing.h and CLLocation+Bearing.m in your project.

- usage:

		CLLocation *home = [[CLLocation alloc] initWithLatitude:0.0 longitude:0.0];
		CLLocation *north = [[CLLocation alloc] initWithLatitude:80.0 longitude:0.0];
		
		CLLocationBearing bearing = [home bearingToLocation: north];
		NSLog(@"That other location is a few thousand miles %@ from here.", NSLocalizedStringFromBearing(bearing));
		
		
	**Output:** "That other location is a few thousand miles North from here."
	
For more info, read the source (I will try to add some comments asap)

##What's new

* Mon Jul 26 2010: added tests and tag 0.1