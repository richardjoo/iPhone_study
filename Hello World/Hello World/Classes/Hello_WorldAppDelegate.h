//
//  Hello_WorldAppDelegate.h
//  Hello World
//
//  Created by Richard Joo on 8/26/09.
//  Copyright Telelanguage, Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hello_WorldViewController;

@interface Hello_WorldAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hello_WorldViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hello_WorldViewController *viewController;

@end

