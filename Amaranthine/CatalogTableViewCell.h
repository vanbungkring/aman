//
//  CatalogTableViewCell.h
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/16/14.
//  Copyright (c) 2014 netra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CatalogTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageCatalog;
@property (strong, nonatomic) IBOutlet UILabel *productName;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UIView *sign;
@property (strong, nonatomic) IBOutlet UIView *commonView;

@end
