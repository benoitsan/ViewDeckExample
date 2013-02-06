//
//  BBViewController.m
//  ChildVCAndViewDeck
//
//  Created by Benoît on 05/02/13.
//  Copyright (c) 2013 Creaceed. All rights reserved.
//

#import "BBDetailViewController.h"
#import "BBViewDeckController.h"
#import "BBDeckLeftViewController.h"
#import "BBDeckCenterViewController.h"

@interface BBDetailViewController () <IIViewDeckControllerDelegate>
@property (nonatomic, strong) BBViewDeckController *deckViewController;
@end

@implementation BBDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
	// DECK VIEW CONTROLLER
    BBDeckLeftViewController *leftController = [[BBDeckLeftViewController alloc] init];
    BBDeckCenterViewController *centerController = [[BBDeckCenterViewController alloc] init];
    
    self.deckViewController = [[BBViewDeckController alloc] initWithCenterViewController:centerController
                                                                      leftViewController:leftController
                                                                     rightViewController:nil];
	self.deckViewController.delegate = self;
    [self.deckViewController setLeftSize:10.];
	self.deckViewController.view.frame = self.view.bounds;
    [self addChildViewController:self.deckViewController];
    [self.view addSubview:self.deckViewController.view];
    [self.deckViewController didMoveToParentViewController:self];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Show Left" style:UIBarButtonItemStyleBordered target:self action:@selector(showLeftPanelAction:)];
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

- (IBAction)showLeftPanelAction:(id)sender {
    [self.deckViewController openLeftViewAnimated:YES];
}




@end
