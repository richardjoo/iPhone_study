//
//  Control_FunAppDelegate.m
//  Control Fun
//
//  Created by Richard Joo on 3/20/10.
//  Copyright Telelanguage, Inc. 2010. All rights reserved.
//

#import "Control_FunAppDelegate.h"
#import "Control_FunViewController.h"

@implementation Control_FunAppDelegate

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
