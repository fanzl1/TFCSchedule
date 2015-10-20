//
//  preferencesTableViewCell.h
//  TFCSchedule
//
//  Created by tarena on 15/9/25.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface preferencesTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end
