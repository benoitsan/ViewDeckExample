//
//  BBTableViewController.m
//  ChildVCAndViewDeck
//
//  Created by Benoît on 06/02/13.
//  Copyright (c) 2013 Creaceed. All rights reserved.
//

#import "BBTableViewController.h"
#import "BBDetailViewController.h"

@interface BBTableViewController ()

@end

@implementation BBTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Test App";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    cell.textLabel.text = @"ViewDeck";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BBDetailViewController *controller = [[BBDetailViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
