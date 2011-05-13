//
//  Control_FunAppDelegate.h
//  Control Fun
//
//  Created by Richard Joo on 3/20/10.
//  Copyright Telelanguage, Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Control_FunViewController;

@interface Control_FunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Control_FunViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Control_FunViewController *viewController;

@end

