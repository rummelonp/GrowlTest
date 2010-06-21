//
//  GrowlTestViewController.m
//  GrowlTest
//
//  Created by Kazuya Takeshima on 10/06/21.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "GrowlTestViewController.h"

@implementation GrowlTestViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
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


- (void)viewDidLoad {
  [super viewDidLoad];
  
  CGRect rect = CGRectMake(5, 5, 60, 300);
  CGSize size = CGSizeMake(150, 30);
  GrowlBox* growlBox = [[GrowlBox alloc] initWithFrame:rect withSize:size];
  [self.view addSubview:growlBox];
  [growlBox performSelector:@selector(growl:) withObject:@"hoge" afterDelay:0.1];
  [growlBox performSelector:@selector(growl:) withObject:@"piyo" afterDelay:0.5];
  [growlBox performSelector:@selector(growl:) withObject:@"pugya" afterDelay:1.0];
  [growlBox performSelector:@selector(growl:) withObject:@"fuga" afterDelay:1.1];
  [growlBox performSelector:@selector(growl:) withObject:@"hoge" afterDelay:2.0];
  [growlBox performSelector:@selector(growl:) withObject:@"piyo" afterDelay:2.5];
  [growlBox performSelector:@selector(growl:) withObject:@"pugya" afterDelay:2.8];
  [growlBox performSelector:@selector(growl:) withObject:@"fuga" afterDelay:3.8];
}

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
