//
//  BBViewDeckController.m
//  ChildVCAndViewDeck
//
//  Created by Benoît on 06/02/13.
//  Copyright (c) 2013 Creaceed. All rights reserved.
//

#import "BBViewDeckController.h"

@interface BBViewDeckController ()

@end

@implementation BBViewDeckController

- (BOOL)shouldAutomaticallyForwardAppearanceMethods {
    return YES;
}

- (BOOL)automaticallyForwardAppearanceAndRotationMethodsToChildViewControllers {
    return YES;
}

@end
