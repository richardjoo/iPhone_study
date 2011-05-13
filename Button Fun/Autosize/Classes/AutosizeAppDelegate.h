//
//  AutosizeAppDelegate.h
//  Autosize
//
//  Created by Richard Joo on 9/15/10.
//  Copyright 2010 Telelanguage, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AutosizeViewController;

@interface AutosizeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AutosizeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AutosizeViewController *viewController;

@end

