//
//  HHSettingCell.m
//  MYLottery
//
//  Created by 胡明正 on 2017/4/3.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import "HHSettingCell.h"

@implementation HHSettingCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCellDataWithDictionary:(NSDictionary *)dict{
    self.imgView.image = [UIImage imageNamed:[dict objectForKey:@"img"]];
    self.detailLabel.text = [dict objectForKey:@"name"];
    if (_hasSwitch) {
        _SW.hidden = NO;
        self.accessoryType = UITableViewCellAccessoryNone;
    } else {
        _SW.hidden = YES;
    }
}


@end
