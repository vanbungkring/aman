//
//  GlobalHelper.h
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/16/14.
//  Copyright (c) 2014 netra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface GlobalHelper : NSObject
+ (GlobalHelper *)sharedCommonFunction;
-(void)giveBorderTo:(UIView *)view
          withColor:(UIColor *)color;

-(void)giveBorderTo:(UIView *)view
         withRadius:(float)radius
    withBorderWidth:(float)width
          withColor:(UIColor *)color;

-(void)giveCornerTo:(UIView *)view
         withRadius:(float)radius;

-(void)giveBorderTo:(UIView *)view
          withColor:(UIColor *)color
   withCornerRadius:(CGFloat)cornerRadius
    withBorderWidth:(CGFloat)borderWidth;

-(BOOL) isValidEmail:(NSString *)checkString;
-(NSString *)pathForFile:(NSString *)fileName;
-(BOOL)checkIfFileExist:(NSString *)fileName;
-(void)deleteItemName:(NSString *)itemName;
-(NSString *)documentPath;
-(NSArray *)getDocumentDirectoryContents;
-(void)setAlert:(NSString *)title message:(NSString *)message;
@end
