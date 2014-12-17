//
//  CatalogTableViewCell.m
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/16/14.
//  Copyright (c) 2014 netra. All rights reserved.
//

#import "CatalogTableViewCell.h"
#import "GlobalHelper.h"
#import "ColorHelper.h"
@implementation CatalogTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    _imageCatalog.frame = CGRectMake(_imageCatalog.frame.origin.x, _imageCatalog.frame.origin.y, 306, 268);
    [[GlobalHelper sharedCommonFunction]giveBorderTo:_imageCatalog withRadius:0 withBorderWidth:1 withColor:[UIColor lightGrayColor]];
    [[GlobalHelper sharedCommonFunction]giveBorderTo:_commonView withRadius:0 withBorderWidth:1 withColor:[UIColor lightGrayColor]];
    [[GlobalHelper sharedCommonFunction]giveCornerTo:_sign withRadius:11.5];
    
    // Configure the view for the selected state
}

@end
