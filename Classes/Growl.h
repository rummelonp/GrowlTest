//
//  Growl.h
//  GrowlTest
//
//  Created by Kazuya Takeshima on 10/06/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuartzCore/CALayer.h"

@protocol GrowlDelegate

- (void)didFinishedHide:(id)sender;

@end

@interface Growl : UILabel
{
  id <GrowlDelegate> delegate;
}

- (id)initWithFrame:(CGRect)frame withObject:(id)object withString:(NSString*)string;

- (void)show;

- (void)hide;

@end
