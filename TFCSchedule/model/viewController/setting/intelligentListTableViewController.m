//
//  intelligentListTableViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "intelligentListTableViewController.h"
#import "intelligentListTableViewCell.h"

@interface intelligentListTableViewController ()
@property(nonatomic,strong)NSString *showString;
@property(nonatomic,strong)NSString *hideString;
@property(nonatomic,strong)NSString *showOrHideString;


@end

@implementation intelligentListTableViewController


-(NSString *)showString
{
    if(!_showString)
    {
        _showString = @"显示";
    }
    return _showString;
}

-(NSString *)hideString
{
    if(!_hideString)
    {
        _hideString = @"隐藏";
    }
    return  _hideString;
}

-(NSString *)showOrHideString
{
    if(!_showOrHideString)
    {
        _showOrHideString = self.showString;
    }
    return _showOrHideString;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"智能清单";
    [self.tableView registerNib:[UINib nibWithNibName:@"intelligentListTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    
}


#pragma mark - Table view data source
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    intelligentListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if(cell == nil)
    {
        cell = [[intelligentListTableViewCell alloc]init];
    }
    switch (indexPath.row) {
        case 0:
            cell.iconImage.image = [UIImage imageNamed:@"settings_all_icon"];
            cell.iconNameLabel.text = @"所有";
            break;
        case 1:
            cell.iconImage.image = [UIImage imageNamed:@"settings_today_icon"];
            cell.iconNameLabel.text = @"今天";
            break;
        case 2:
            cell.iconImage.image = [UIImage imageNamed:@"settings_today_icon"];
            cell.iconNameLabel.text = @"最近7天";
            break;
        case 3:
            cell.iconImage.image = [UIImage imageNamed:@"settings_assign_me_icon"];
            cell.iconNameLabel.text = @"分配给我";
            break;
        case 4:
            cell.iconImage.image = [UIImage imageNamed:@"settings_calendar_icon"];
            cell.iconNameLabel.text = @"日历";
            break;
        case 5:
            cell.iconImage.image = [UIImage imageNamed:@"settings_completed_icon"];
            cell.iconNameLabel.text = @"已完成";

            break;
        case 6:
            cell.iconImage.image = [UIImage imageNamed:@"settings_tag_icon"];
            cell.iconNameLabel.text = @"标签";
            break;
    }
    cell.showOrHideLabel.text = self.showOrHideString;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"显示or隐藏");
    intelligentListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if(cell == nil)
    {
        cell = [[intelligentListTableViewCell alloc]init];
    }
    switch (indexPath.row) {
        case 0:
            cell.iconImage.image = [UIImage imageNamed:@"settings_all_icon"];
            cell.iconNameLabel.text = @"所有";
            cell.showOrHideLabel.text = self.hideString;
            break;
        case 1:
            cell.iconImage.image = [UIImage imageNamed:@"settings_today_icon"];
            cell.iconNameLabel.text = @"今天";
            cell.showOrHideLabel.text = self.showString;
            break;
        case 2:
            cell.iconImage.image = [UIImage imageNamed:@"settings_today_icon"];
            cell.iconNameLabel.text = @"最近7天";
            cell.showOrHideLabel.text = self.showOrHideString;
            break;
        case 3:
            cell.iconImage.image = [UIImage imageNamed:@"settings_assign_me_icon"];
            cell.iconNameLabel.text = @"分配给我";
            break;
        case 4:
            cell.iconImage.image = [UIImage imageNamed:@"settings_calendar_icon"];
            cell.iconNameLabel.text = @"日历";
            break;
        case 5:
            cell.iconImage.image = [UIImage imageNamed:@"settings_completed_icon"];
            cell.iconNameLabel.text = @"已完成";
            break;
        case 6:
            cell.iconImage.image = [UIImage imageNamed:@"settings_tag_icon"];
            cell.iconNameLabel.text = @"标签";
            break;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 15;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}
@end
