//
//  HHTabbarView.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/1.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "HHTabbarView.h"
#import "HHButton.h"


@interface HHTabbarView()

@property (nonatomic, weak) HHButton *selectedButton;

@end

@implementation HHTabbarView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //添加按钮
//        [self addButton];
        
    }
    return self;
}

- (void)addTabbarButtonWithName:(NSString *)name selName:(NSString *)selName{
    HHButton *btn = [HHButton buttonWithType:UIButtonTypeCustom];
    
    //设置按钮的图片
    [btn setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    
    //监听按钮点击
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    
    [self addSubview:btn];
    
    btn.tag = self.subviews.count - 1;
}

//#pragma mark ------按钮------<弃用>
//- (void)addButton{
//    
//    NSString *imageName = nil;
//    NSString *selImageName = nil;
//    
//    for (int i = 0; i<5; i++) {
//        HHButton *btn = [HHButton buttonWithType:UIButtonTypeCustom];
//        btn.tag = i;
//        imageName = [NSString stringWithFormat:@"TabBar%d",i + 1];
//        selImageName = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
//        
//        //设置按钮的图片
//        [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//        [btn setBackgroundImage:[UIImage imageNamed:selImageName] forState:UIControlStateSelected];
//        
//        //监听按钮点击
//        
//        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
//        
//        [self addSubview:btn];
//        
//        if (i == 0) {
//            [self btnClick:btn];
//        }
//    }
//}

#pragma mark ------click------
- (void)btnClick:(HHButton *)sender{
    
    _selectedButton.selected = NO;
    sender.selected = YES;
    _selectedButton = sender;
    
    //切换控制器
//    if (_block) {
//        _block(sender.tag);
//    }
    
    if ([self.delegate respondsToSelector:@selector(tabbar:didSelectedIndex:)]) {
        [_delegate tabbar:self didSelectedIndex:(int)sender.tag];
    }
    
}

 
- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat btnW = self.bounds.size.width/self.subviews.count;
    CGFloat btnH = self.bounds.size.height;
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    
    //设置按钮尺寸
    for (int i = 0; i < self.subviews.count; i++) {
        HHButton *btn = self.subviews[i];
        btn.tag = i;
        btnX = i * btnW;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        if (i == 0) {
            [self btnClick:btn];
        }
    }
    
    

}


@end
