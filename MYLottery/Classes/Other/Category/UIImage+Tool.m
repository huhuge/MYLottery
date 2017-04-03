//
//  UIImage+Tool.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/2.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "UIImage+Tool.h"

@implementation UIImage (Tool)


/**
 *      图片拉伸
 */
+ (instancetype)imageWithResizableImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    return image;
}

@end
