//
//  BarHelper.m
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/28/14.
//  Copyright (c) 2014 netra. All rights reserved.
//

#import "BarHelper.h"

#import "SWRevealViewController.h"

@implementation UIViewController (BarHelper)

- (void)removeAbraUserAvatar {
    UIBarButtonItem *loginBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Login"
                                                                           style:UIBarButtonItemStylePlain target:self
                                                                          action:@selector(accountBarButtonTouched)];
    
    self.navigationItem.rightBarButtonItems = @[loginBarButtonItem, self.navigationItem.rightBarButtonItems.lastObject];
}

- (void)avatarButtonTouched {
    UIStoryboard *userStoryBoard = [UIStoryboard storyboardWithName:@"User" bundle:nil];
    UINavigationController *userNavigationController = [userStoryBoard instantiateInitialViewController];
    [self.navigationController pushViewController:userNavigationController animated:YES];
}

- (void)setDefaultAbraNavigationBar {
    [self setLeftAbraNavigationBar];

}
- (void)setUserAbraNavigationBar {
    [self setRightUserAbraNavigationBar];
}
- (void)sidebarButtonTouched {
    [self.revealViewController revealToggle:nil];
    self.revealViewController.frontViewShadowOffset = CGSizeMake(0, 0);
    self.revealViewController.frontViewShadowOpacity = 0.0f;
    self.revealViewController.frontViewShadowRadius = 0.0f;
    
}


- (void)setLeftAbraNavigationBar {
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                                                                   target:nil
                                                                                   action:nil];
    negativeSpacer.width = -10;
    
    UIButton *sidebarButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect sidebarButtonFrame = sidebarButton.frame;
    sidebarButtonFrame.size.width = 32;
    sidebarButtonFrame.size.height = 32;
    
    sidebarButton.frame = sidebarButtonFrame;
    
    [sidebarButton setImage:[UIImage imageNamed:@"icon-sidebar.png"]
                   forState:UIControlStateNormal];
    
    [sidebarButton addTarget:self
                      action:@selector(sidebarButtonTouched)
            forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *sidebarBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:sidebarButton];
    sidebarBarButtonItem.tintColor = [UIColor orangeColor];
    self.navigationItem.leftBarButtonItems = @[negativeSpacer, sidebarBarButtonItem];
}

- (void)setRightAbraNavigationBar {
    UIBarButtonItem *loginBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Login"
                                                                           style:UIBarButtonItemStylePlain target:self
                                                                          action:@selector(accountBarButtonTouched)];
    
    UIButton *filterButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect filterButtonFrame = filterButton.frame;
    filterButtonFrame.size.width = 20;
    filterButtonFrame.size.height = 20;
    
    filterButton.frame = filterButtonFrame;
    
    [filterButton setImage:[UIImage imageNamed:@"icon-filter.png"]
                  forState:UIControlStateNormal];
    
    UIBarButtonItem *filterBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:nil];
    
    self.navigationItem.rightBarButtonItems = @[loginBarButtonItem, filterBarButtonItem];
}
- (void)setRightUserAbraNavigationBar {
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                                                                   target:nil
                                                                                   action:nil];
    negativeSpacer.width = -10;
    ///cart button start
    UIButton *filterButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect filterButtonFrame = filterButton.frame;
    filterButtonFrame.size.width = 20;
    filterButtonFrame.size.height = 20;
    
    filterButton.frame = filterButtonFrame;
    
    [filterButton setImage:[UIImage imageNamed:@"icon-filter.png"]
                  forState:UIControlStateNormal];
    
    UIBarButtonItem *filterBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:filterButton];
    
    ///cart button end
    ////edit button start
    
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:nil action:nil];
    
    self.navigationItem.rightBarButtonItems = @[editButton,negativeSpacer,filterBarButtonItem];
}
@end
