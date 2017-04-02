//
//  HHTabbarView.h
//  MYLottery
//
//  Created by 胡明正 on 2017/4/1.
//  Copyright © 2017年 huhuge. All rights reserved.
//

#import <UIKit/UIKit.h>

//typedef void(^HHTabbarViewBlock)(NSInteger senlectedIndex);

@class HHTabbarView;


@protocol HHTabbarViewDelegate <NSObject>


@optional

- (void)tabbar:(HHTabbarView *)tabbar didSelectedIndex:(int)index;

@end

@interface HHTabbarView : UIView


//@property (nonatomic, copy) HHTabbarViewBlock block;
@property (nonatomic, strong) id<HHTabbarViewDelegate>delegate ;

//给外界创建按钮
- (void)addTabbarButtonWithName:(NSString *)name selName:(NSString *)selName;


@end
