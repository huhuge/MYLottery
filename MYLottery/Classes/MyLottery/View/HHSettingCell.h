//
//  HHSettingCell.h
//  MYLottery
//
//  Created by 胡明正 on 2017/4/3.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHSettingCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (nonatomic, readwrite) BOOL hasSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *SW;

- (void)setCellDataWithDictionary:(NSDictionary *)dict;

@end
