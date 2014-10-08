//
//  YGHCustomTableViewCell.h
//  UIcustomcell
//
//  Created by mac on 14-9-25.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YGHPerson;
@interface YGHCustomTableViewCell : UITableViewCell
@property(nonatomic,strong)UIImageView *imageview1;
@property(nonatomic,strong) UILabel *namelable;
@property(nonatomic,strong)UILabel *titlelable;
@property(nonatomic,strong)UILabel *femallable;
-(void)set:(YGHPerson *)person;
@end
