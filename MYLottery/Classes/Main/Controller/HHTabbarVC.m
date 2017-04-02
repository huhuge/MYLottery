//
//  HHTabbarVC.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/1.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "HHTabbarVC.h"
#import "HHTabbarView.h"

@interface HHTabbarVC ()<HHTabbarViewDelegate>

@end

@implementation HHTabbarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //移除自带的tabbar
//    [self.tabBar removeFromSuperview];
    
    //创建tabbar
    HHTabbarView *tabbar = [[HHTabbarView alloc]init];
    
//    tabbar.block = ^(NSInteger selectedIndex){
//        self.selectedIndex = selectedIndex;
//    };
    
    tabbar.delegate = self;
    
    tabbar.frame = self.tabBar.bounds;
    
    [self.tabBar addSubview:tabbar];
    
    NSString *imageName = nil;
    NSString *selImageName = nil;
    for (int i = 0; i < self.childViewControllers.count; i++) {
        
        imageName = [NSString stringWithFormat:@"TabBar%d",i + 1];
        selImageName = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
        //添加底部按钮
        [tabbar addTabbarButtonWithName:imageName selName:selImageName];
    }
    

    
    
}

- (void)tabbar:(HHTabbarView *)tabbar didSelectedIndex:(int)index{
    self.selectedIndex = index;
}

@end
