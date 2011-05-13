//
//  Hello_WorldAppDelegate.m
//  Hello World
//
//  Created by Richard Joo on 8/26/09.
//  Copyright Telelanguage, Inc. 2009. All rights reserved.
//

#import "Hello_WorldAppDelegate.h"
#import "Hello_WorldViewController.h"

@implementation Hello_WorldAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
