//
//  YGHSencustomTableViewCell.m
//  UIcustomcell
//
//  Created by mac on 14-9-25.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import "YGHSencustomTableViewCell.h"
#import "YGHImage.h"
@implementation YGHSencustomTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _imageview1=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 100, 100)];
        _imageview2=[[UIImageView alloc]initWithFrame:CGRectMake(110, 5, 100, 100)];
        _imageview3=[[UIImageView alloc]initWithFrame:CGRectMake(215, 5, 100, 100)];
        [self.contentView addSubview:_imageview1];
        [self.contentView addSubview:_imageview2];
        [self.contentView addSubview:_imageview3];
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}
-(void)set:(YGHImage *)image
{
    _imageview1.image=[UIImage imageNamed:image.image1];
      _imageview2.image=[UIImage imageNamed:image.image2];
      _imageview3.image=[UIImage imageNamed:image.image3];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
