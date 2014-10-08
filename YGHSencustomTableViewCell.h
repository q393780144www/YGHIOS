//
//  YGHSencustomTableViewCell.h
//  UIcustomcell
//
//  Created by mac on 14-9-25.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YGHImage;
@interface YGHSencustomTableViewCell : UITableViewCell
@property(nonatomic,strong)UIImageView *imageview1;
@property(nonatomic,strong)UIImageView *imageview2;
@property(nonatomic,strong)UIImageView *imageview3;
-(void)set:(YGHImage *)image;
@end
