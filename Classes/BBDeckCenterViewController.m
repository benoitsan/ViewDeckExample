//
//  BBDeckCenterViewController.m
//  ChildVCAndViewDeck
//
//  Created by Benoît on 06/02/13.
//  Copyright (c) 2013 Creaceed. All rights reserved.
//

#import "BBDeckCenterViewController.h"
#import "BBChildCenterViewController.h"

@interface BBDeckCenterViewController ()
@end

@implementation BBDeckCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BBChildCenterViewController *childController = [[BBChildCenterViewController alloc] init];
	childController.view.frame = self.view.bounds;
    [self addChildViewController:childController];
    [self.view addSubview:childController.view];
    [childController didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    BBDebugLogMethod();
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    BBDebugLogMethod();
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
    BBDebugLogMethod();
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
    BBDebugLogMethod();
}

@end
