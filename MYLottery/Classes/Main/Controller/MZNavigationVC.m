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
        //获取应用程序中所有的导航条
        //获取所有导航条外观
        UINavigationBar *bar = [UINavigationBar appearance];
        
        [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
        //设置主题颜色和大小
        [bar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15],NSForegroundColorAttributeName:[UIColor whiteColor]}] ;

        
    }
}

- (void)viewDidLoad{
    [super viewDidLoad];
 }

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;
    return [super pushViewController:viewController animated:animated];
}

@end
