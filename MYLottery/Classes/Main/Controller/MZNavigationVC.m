//
//  MZNavigationVC.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/1.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "MZNavigationVC.h"

@interface MZNavigationVC ()

@end

@implementation MZNavigationVC

+ (void)initialize{
    if (self == [MZNavigationVC class]) {//保证只调用一次
        //1.设置全局导航条外观
        [self setNavigation];
        
        //2.设置全局barbutton外观
//        [self setBarButton];
        
    }
}

#pragma mark ------设置导航条------
+ (void)setNavigation{
    //获取所有导航条外观
    UINavigationBar *bar = [UINavigationBar appearance];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    //设置title文字颜色和大小
    [bar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15],NSForegroundColorAttributeName:[UIColor whiteColor]}] ;
    
    //设置导航条主题颜色
    [bar setTintColor:[UIColor whiteColor]];

}

#pragma mark ------设置barbutton------
+ (void)setBarButton{
    //获取所有UIBarButtonItem的外观
    UIBarButtonItem *btnItem = [UIBarButtonItem appearance];
    //设置barButton的背景图片
    [btnItem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [btnItem setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
    //设置返回按钮的背景图片
    [btnItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [btnItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
}



- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    viewController.hidesBottomBarWhenPushed = YES;
    return [super pushViewController:viewController animated:animated];
}

@end
