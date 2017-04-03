//
//  MZMyLotterVC.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/3.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "MZMyLotterVC.h"
#import "MZSetttingVC.h"
#import "HHLoginVC.h"


@interface MZMyLotterVC ()
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;

@end

@implementation MZMyLotterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置按钮拉伸背景图片
    [_btnLogin setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButton"] forState:UIControlStateNormal];
    [_btnLogin setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButtonPressed"] forState:UIControlStateHighlighted];
}

- (IBAction)turnToSetting:(UIButton *)sender {
    MZSetttingVC *nextVC = [[MZSetttingVC alloc]init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

@end
