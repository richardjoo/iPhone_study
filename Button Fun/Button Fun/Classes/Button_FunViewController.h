//
//  Button_FunViewController.h
//  Button Fun
//
//  Created by Richard Joo on 11/6/09.
//  Copyright Telelanguage, Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Button_FunViewController : UIViewController {
	IBOutlet UILabel *statusText;
}
@property(retain, nonatomic) UILabel *statusText;

-(IBAction)buttonPressed:(id)sender;

@end

