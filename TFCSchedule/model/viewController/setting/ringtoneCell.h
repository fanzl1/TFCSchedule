//
//  ringtoneCell.h
//  TFCSchedule
//
//  Created by tarena on 15/10/8.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ringtoneCell : UITableViewCell

@property(nonatomic,strong)UIImageView *checkImageView;
@property(nonatomic,strong)UILabel *ringtoneName;

@property(nonatomic,assign)BOOL showCheckImageView;
@end
