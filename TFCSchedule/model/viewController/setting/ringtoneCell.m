//
//  ringtoneCell.m
//  TFCSchedule
//
//  Created by tarena on 15/10/8.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "ringtoneCell.h"

@implementation ringtoneCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //name
    _ringtoneName = [[UILabel alloc]initWithFrame:CGRectMake(20, 17.5, 200, 20)];
    _ringtoneName.textColor = [UIColor colorWithRed:0.15 green:0.5 blue:1 alpha:1];
    _ringtoneName.font = [UIFont systemFontOfSize:18];
    [self addSubview:_ringtoneName];
    //checkimage
    _checkImageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width - 35, 17.5, 20, 20)];
    _checkImageView.image = [UIImage imageNamed:@"cell_checkmark_icon"];
    [self addSubview:_checkImageView];
    return self;
}

@synthesize showCheckImageView = _showCheckImageView;
-(void)setShowCheckImageView:(BOOL)showCheckImageView
{
    _showCheckImageView = showCheckImageView;
    if(_showCheckImageView == YES)
    {
        _checkImageView.alpha = 1;
    }
    else
    {
        _checkImageView.alpha = 0;
    }
}
@end
