//
//  CatalogTableViewController.m
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/16/14.
//  Copyright (c) 2014 netra. All rights reserved.
//

#import "CatalogTableViewController.h"
#import "BarHelper.h"
@interface CatalogTableViewController ()

@end

@implementation CatalogTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setDefaultAbraNavigationBar];
    self.title = @"Catalog";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    return cell;
}
@end
