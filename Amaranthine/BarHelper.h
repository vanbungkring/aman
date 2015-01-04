//
//  BarHelper.h
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/28/14.
//  Copyright (c) 2014 netra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (BarHelper)
- (void)setDefaultAbraNavigationBar;
- (void)setUserAbraNavigationBar;
- (void)setAbraUserAvatarWithUserId:(NSString *)avatarUrl;
- (void)removeAbraUserAvatar;
@end
