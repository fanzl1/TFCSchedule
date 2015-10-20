//
//  preferencesTableViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/25.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "preferencesTableViewController.h"
#import "preferencesTableViewCell.h"
#import "RingtoneTableViewController.h"

@interface preferencesTableViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *chineseCalender;

@end

@implementation preferencesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"偏好设置";
    [self.tableView registerNib:[UINib nibWithNibName: @"preferencesTableViewCell"bundle:nil] forCellReuseIdentifier:@"Cell"];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 2;
            break;
        case 2:
            return 4;
            break;
    }
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
#warning 补充detailLabel
    preferencesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell == nil)
    {
        cell = [[preferencesTableViewCell alloc]init];
    }
    switch (indexPath.section) {
        case 0:
            cell.iconImage.image = [UIImage imageNamed:@"settings_language_icon"];
            cell.nameLabel.text = @"语言";
            break;
        case 1:
            if(indexPath.row == 0)
            {
                cell.iconImage.image = [UIImage imageNamed:@"settings_ringtone_icon"];
                cell.nameLabel.text = @"铃声";
            }
            else
            {
                cell.iconImage.image = [UIImage imageNamed:@"settings_daily_alert_icon"];
                cell.nameLabel.text = @"每日提醒";
            }
            break;
        case 2:
            if(indexPath.row == 0)
            {
                cell.iconImage.image = [UIImage imageNamed:@"settings_font_icon"];
                cell.nameLabel.text = @"字体大小";
            }
            else if (indexPath.row == 1)
            {
                cell.iconImage.image = [UIImage imageNamed:@"settings_week_start_on_icon"];
                cell.nameLabel.text = @"星期开始于";
            }
            else if (indexPath.row == 2)
            {
                cell.iconImage.image = [UIImage imageNamed:@"settings_badge_icon"];
                cell.nameLabel.text = @"应用角标";
            }
            else
            {
                return self.chineseCalender;
            }
            break;
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
#warning 补充点击事件
    RingtoneTableViewController *ringtoneVC = [[RingtoneTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    switch (indexPath.section) {
        case 1:
            if(indexPath.row == 0)
            {
                [self.navigationController pushViewController:ringtoneVC animated:YES];
            }
            break;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}
@end
