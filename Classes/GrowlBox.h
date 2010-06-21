//
//  GrowlBox.h
//  GrowlTest
//
//  Created by Kazuya Takeshima on 10/06/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Growl.h"

@interface GrowlBox : UIView <GrowlDelegate>
{
  NSMutableArray* growlArray;
  CGSize growlSize;
  NSNull* empty;
}

- (id)initWithFrame:(CGRect)frame withSize:(CGSize)size;

- (void)growl:(NSString*)string;

- (void)didFinishedHide:(id)sender;

@end
