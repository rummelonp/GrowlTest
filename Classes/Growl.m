//
//  Growl.m
//  GrowlTest
//
//  Created by Kazuya Takeshima on 10/06/21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Growl.h"

@implementation Growl

- (id)initWithFrame:(CGRect)frame withObject:(id)object withString:(NSString*)string
{
  self = [self initWithFrame:frame];
  if (self != nil) {
    delegate = object;
    self.text = string;
    self.textColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor blackColor];
    self.alpha = 0;
    self.adjustsFontSizeToFitWidth = YES;
    self.textAlignment = UITextAlignmentCenter;
    self.clipsToBounds = YES;
    self.layer.cornerRadius = 8.0;
  }
  return self;
}

- (void)show
{
  CGContextRef context = UIGraphicsGetCurrentContext();
  [UIView beginAnimations:nil context:context];
  [UIView setAnimationDuration:0.5];
  [UIView setAnimationDelegate:self];
  self.alpha = 0.8;
  [UIView commitAnimations];
  [self performSelector:@selector(hide) withObject:self afterDelay:2.0];
}

- (void)hide
{
  CGContextRef context = UIGraphicsGetCurrentContext();
  [UIView beginAnimations:nil context:context];
  [UIView setAnimationDuration:0.5];
  [UIView setAnimationDelegate:self];
  [UIView setAnimationDidStopSelector:@selector(removeFromSuperview)];
  self.alpha = 0;
  [UIView commitAnimations];
  [delegate didFinishedHide:self];
}

@end
