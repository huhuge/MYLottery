//
//  HHTitleBtn.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/2.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "HHTitleBtn.h"

@implementation HHTitleBtn


- (void)awakeFromNib{
    [super awakeFromNib];
    self.imageView.contentMode = UIViewContentModeCenter;
}

//self.titleLabel 调用陷入死循环
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    
    NSDictionary *att = @{NSFontAttributeName : [UIFont systemFontOfSize:15]
                          };
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine attributes:att context:nil].size.width;
    CGFloat titleH = contentRect.size.height;
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW = 30;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageY = 0;
    
    return CGRectMake(imageX, imageY, imageW, imageH);

}

@end
