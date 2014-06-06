//====================================================================================================
// Author: Peter Chen
// Created: 6/6/14
// Copyright 2014 Peter Chen
//====================================================================================================

#import "MyController.h"
#import "PCSBlurView.h"

@interface MyController()



@end

@implementation MyController

- (id)init {
   if ((self = [super init])) {
   }
   return self;
}

- (void)viewDidLoad {
   [super viewDidLoad];
   self.title = @"Blur View";
   
   UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
   scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
   scrollView.alwaysBounceHorizontal = YES;
   scrollView.alwaysBounceVertical = YES;
   [self.view addSubview:scrollView];
   
   for (int i=0; i<20; i++) {
      UIView *view = [[UIView alloc] initWithFrame:CGRectMake(arc4random_uniform(200), arc4random_uniform(300),
                                                              10 + arc4random_uniform(200), 10 + arc4random_uniform(200))];
      view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(100)/100.0
                                             green:arc4random_uniform(100)/100.0
                                              blue:arc4random_uniform(100)/100.0 alpha:1];
      [scrollView addSubview:view];
   }
   
   PCSBlurView *blurView = [[PCSBlurView alloc] initWithFrame:CGRectMake(50, 150, 150, 150)];
   [self.view addSubview:blurView];
}

//====================================================================================================
#pragma mark - Events
//====================================================================================================



@end
