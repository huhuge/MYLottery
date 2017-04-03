//
//  MZSetttingVC.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/3.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "MZSetttingVC.h"
#import "HHSettingCell.h"


@interface MZSetttingVC ()

@property (nonatomic, strong) NSArray *listInfoArray;

@end

@implementation MZSetttingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置";
    self.tableView.bounces = YES;
//    self.tableView.tableHeaderView = _headerView;
//    self.tableView.tableFooterView = _footerView;
    
    [self setData];
    
 [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([HHSettingCell class]) bundle:nil] forCellReuseIdentifier:@"myCell"];
}

#pragma mark ------设置数据------
- (void)setData{
    _listInfoArray = [[NSArray alloc]init];
    NSArray *arr1 = @[@{@"img":@"MorePush",@"name":@"推送和提醒"},@{@"img":@"handShake",@"name":@"摇一摇机选"},@{@"img":@"sound_Effect",@"name":@"声音效果"}];
    
    NSArray *arr2 = @[@{@"img":@"MoreUpdate",@"name":@"检测新版本"},@{@"img":@"MoreHelp",@"name":@"帮助"},@{@"img":@"MoreShare",@"name":@"分享"},@{@"img":@"MoreMessage",@"name":@"查看消息"},@{@"img":@"MoreNetease",@"name":@"产品推荐"},@{@"img":@"MoreAbout",@"name":@"关于"}];
    
    _listInfoArray = @[arr1,arr2];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _listInfoArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_listInfoArray[section] count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.00001;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"myCell";
    HHSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[HHSettingCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    NSDictionary *dict = _listInfoArray[indexPath.section][indexPath.row];
    NSLog(@"%@",dict);
    if (indexPath.section == 0) {
        if (indexPath.row ==1 || indexPath.row == 2) {
            cell.hasSwitch = YES;
        }
    }else{
        cell.hasSwitch = NO;
    }

    [cell setCellDataWithDictionary:dict];
    
    return cell;
}


@end
