//
//  DemoAppDelegate.h
//  Demo
//
//  Created by Vid Tadel on 6/30/10.
//  Copyright 2010 GuerillaCode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DemoAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
