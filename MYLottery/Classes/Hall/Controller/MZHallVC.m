//
//  MZHallVC.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/1.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "MZHallVC.h"
#import "MZImformationVC.h"

@interface MZHallVC ()

@end

@implementation MZHallVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15],NSForegroundColorAttributeName:[UIColor whiteColor]}] ;
//    UIBarButtonItem *barItem = [[UIBarButtonItem alloc]initWithCustomView:[UIButton buttonWithType:UIButtonTypeContactAdd]];
//    self.navigationItem.rightBarButtonItem = barItem;
}
- (IBAction)turnToInfo:(UIButton *)sender {
    MZImformationVC *nextVC = [[MZImformationVC alloc]init];
    [self.navigationController pushViewController:nextVC animated:YES];
    
}



@end
