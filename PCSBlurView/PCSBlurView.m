//====================================================================================================
// Author: Peter Chen
// Created: 6/6/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "PCSBlurView.h"

@interface PCSBlurView()

@property (nonatomic, strong) UIToolbar *toolbar;

@end

@implementation PCSBlurView

- (id)initWithFrame:(CGRect)frame {
   if ((self = [super initWithFrame:frame])) {
      self.toolbar = [[UIToolbar alloc] initWithFrame:self.bounds];
      self.toolbar.barStyle = UIBarStyleDefault;
      self.toolbar.translucent = YES;
      self.toolbar.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
      self.toolbar.clipsToBounds = YES;
      [self addSubview:self.toolbar];
   }
   return self;
}

@end
