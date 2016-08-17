//
//  UIImage+Image.m
//  First Project By Myself
//
//  Created by ray威LL on 16/8/11.
//  Copyright © 2016年 ray威LL. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)

+ (UIImage *)imageOriginalWithName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

}



@end
