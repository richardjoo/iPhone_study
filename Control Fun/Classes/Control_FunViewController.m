//
//  Control_FunViewController.m
//  Control Fun
//
//  Created by Richard Joo on 3/20/10.
//  Copyright Telelanguage, Inc. 2010. All rights reserved.
//

#import "Control_FunViewController.h"

@implementation Control_FunViewController
@synthesize nameField;
@synthesize numberField;
@synthesize sliderLabel;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize switchView;
@synthesize doSomethingButton;

- (void)viewDidLoad
{
	UIImage *buttonImageNormal = [UIImage imageNamed:@"whiteButton.png"];
	UIImage *stretchableButtonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
	[doSomethingButton setBackgroundImage:stretchableButtonImageNormal forState:UIControlStateNormal];
	
	UIImage *buttonImagePressed = [UIImage imageNamed:@"blueButton.png"];
	UIImage *stretchableButtonImagePressed = [buttonImagePressed stretchableImageWithLeftCapWidth:12 topCapHeight:0];
	[doSomethingButton setBackgroundImage:stretchableButtonImagePressed forState:UIControlStateHighlighted];
}


- (IBAction)textFieldDoneEditing:(id)sender
{
	[sender resignFirstResponder];
}

- (IBAction)backgroundClick:(id)sender
{
	[nameField resignFirstResponder];
	[numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(id)sender
{
	UISlider *slider = (UISlider *)sender;
	int progressAsInt = (int)(slider.value + 0.5f);
	NSString *newText = [[NSString alloc] initWithFormat:@"%d", progressAsInt];
	sliderLabel.text = newText;
	[newText release];
}

- (IBAction)switchChanged:(id)sender
{
	UISwitch *whichSwitch = (UISwitch *)sender;
	BOOL setting = whichSwitch.isOn;
	[leftSwitch setOn:setting animated:YES];
	[rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleShowHide:(id)sender
{
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	NSInteger segment = segmentedControl.selectedSegmentIndex;
	
	if (segment == kShowSegmentIndex) {
		[switchView setHidden:NO];
	}
	else {
		[switchView setHidden:YES];
	}
}

- (IBAction)doSomethingButton:(id)sender
{
	UIActionSheet *actionSheet = [[UIActionSheet alloc]
								  initWithTitle:@"Are you sure?"
								  delegate:self
								  cancelButtonTitle:@"No Way!"
								  destructiveButtonTitle:@"Yes, I am sure!"
								  otherButtonTitles:nil];
	[actionSheet showInView:self.view];
	[actionSheet release];
}

- (void)actionSheet:(UIActionSheet *)actionSheet
didDismissWithButtonIndex:(NSInteger)buttonIndex
{
	if (!(buttonIndex == [actionSheet cancelButtonIndex]))
	{
		NSString *msg = nil;
		
		if (nameField.text.length > 0)
		{
			msg = [[NSString alloc] initWithFormat:@"You can breathe easy, %@, everything went OK.", nameField.text];
		}
		else {
			msg = @"You can breath easy, everything went OK.";
		}
		
		UIAlertView *alert = [[UIAlertView alloc]
							  initWithTitle:@"Something was done"
							  message:msg 
							  delegate:self 
							  cancelButtonTitle:@"Phew!" 
							  otherButtonTitles:nil];
		[alert show];
		[alert release];
		[msg release];
	}
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
