//
//  YGHCustomTableViewCell.m
//  UIcustomcell
//
//  Created by mac on 14-9-25.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import "YGHCustomTableViewCell.h"
#import "YGHPerson.h"


@implementation YGHCustomTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _imageview1=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 60, 60)];
        _namelable=[[UILabel alloc]initWithFrame:CGRectMake(60, 5, 100, 20)];
    _titlelable=[[UILabel alloc]initWithFrame:CGRectMake(60,25, 200, 20)];
    _femallable=[[UILabel alloc]initWithFrame:CGRectMake(60, 45, 100, 20)];
        _femallable.textAlignment=NSTextAlignmentLeft;
        _titlelable.textAlignment=NSTextAlignmentLeft;
        _namelable.textAlignment=NSTextAlignmentLeft;
        [self.contentView addSubview:_imageview1];
        [self.contentView addSubview:_femallable];
       
        [self.contentView addSubview:_namelable];
        [self.contentView addSubview:_titlelable];
    }
    return self;
}
-(void)set:(YGHPerson *)person

{
    
    _imageview1.image=[UIImage imageNamed:person.image];
  
  
    _titlelable.text=person.title;
    _namelable.text=person.name;
    _femallable.text=person.famle;
}
- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
