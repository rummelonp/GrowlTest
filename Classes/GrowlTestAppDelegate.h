//
//  GrowlTestAppDelegate.h
//  GrowlTest
//
//  Created by Kazuya Takeshima on 10/06/21.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GrowlTestViewController;

@interface GrowlTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GrowlTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GrowlTestViewController *viewController;

@end

