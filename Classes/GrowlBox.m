//
//  GrowlBox.m
//  GrowlTest
//
//  Created by Kazuya Takeshima on 10/06/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "GrowlBox.h"

@implementation GrowlBox

- (id)initWithFrame:(CGRect)frame withSize:(CGSize)size
{
  if ((self = [super initWithFrame:frame])) {
    growlArray = [[NSMutableArray alloc] init];
    growlSize = size;
    empty = [NSNull null];
  }
  return self;
}

- (void)growl:(NSString*)string
{
  BOOL isLast = YES;
  int index = 0;
  for (int growlCount = [growlArray count]; index < growlCount; index += 1) {
    if ([growlArray objectAtIndex:index] == empty) {
      isLast = NO;
      break;
    }
  }
  CGRect rect = CGRectMake(0, 0 + index * (growlSize.height + 5), growlSize.width, growlSize.height);
  Growl* growl = [[Growl alloc] initWithFrame:rect withObject:self withString:string];
  [self addSubview:growl];
  [growl show];
  if (isLast) {
    [growlArray addObject:growl];
  } else {
    [growlArray replaceObjectAtIndex:index withObject:growl];
  }
}

- (void)didFinishedHide:(id)sender
{
  int index = [growlArray indexOfObject:sender];
  [growlArray replaceObjectAtIndex:index withObject:empty];
}

- (void)dealloc
{
  [growlArray release];
  [empty release];
  [super dealloc];
}

@end
