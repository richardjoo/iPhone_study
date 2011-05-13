//
//  Button_FunAppDelegate.h
//  Button Fun
//
//  Created by Richard Joo on 11/6/09.
//  Copyright Telelanguage, Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Button_FunViewController;

@interface Button_FunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Button_FunViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Button_FunViewController *viewController;

@end

