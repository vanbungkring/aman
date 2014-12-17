//
//  GlobalHelper.m
//  Amaranthine
//
//  Created by Arie Prasetyo on 12/16/14.
//  Copyright (c) 2014 netra. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "GlobalHelper.h"

@implementation GlobalHelper
+ (GlobalHelper *)sharedCommonFunction {
    static dispatch_once_t pred;
    static GlobalHelper *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[GlobalHelper alloc] init];
    });
    return shared;
}

-(void)giveBorderTo:(UIView *)view
          withColor:(UIColor *)color{
    CALayer *layer = view.layer;
    [layer setCornerRadius:10];
    [layer setBorderWidth:0.5];
    layer.borderColor=[color CGColor];
}

-(void)giveBorderTo:(UIView *)view
          withColor:(UIColor *)color
   withCornerRadius:(CGFloat)cornerRadius
    withBorderWidth:(CGFloat)borderWidth{
    CALayer *layer = view.layer;
    [layer setCornerRadius:cornerRadius];
    [layer setBorderWidth:borderWidth];
    layer.borderColor=[color CGColor];
}

-(void)giveCornerTo:(UIView *)view
         withRadius:(float)radius{
    CALayer *layer = view.layer;
    [layer setCornerRadius:radius];
}


-(void)giveBorderTo:(UIView *)view
         withRadius:(float)radius
    withBorderWidth:(float)width
          withColor:(UIColor *)color{
    CALayer *layer = view.layer;
    [layer setCornerRadius:radius];
    [layer setBorderWidth:width];
    layer.borderColor=[color CGColor];
}

-(BOOL) isValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = YES; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}

#pragma mark - write access

-(NSString *)documentPath{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

-(NSString *)pathForFile:(NSString *)fileName{
    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [documentPath stringByAppendingPathComponent:fileName];
    return filePath;
}

-(BOOL)checkIfFileExist:(NSString *)fileName{
    return [[NSFileManager defaultManager] fileExistsAtPath:[self pathForFile:fileName]];
}

-(NSArray *)getDocumentDirectoryContents{
    return [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[self documentPath] error:nil];
}

-(void)deleteItemName:(NSString *)itemName{
    [[NSFileManager defaultManager]removeItemAtPath:[self pathForFile:itemName] error:nil];
}

-(void)setAlert:(NSString *)title message:(NSString *)message{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    [alert show];
}
@end
