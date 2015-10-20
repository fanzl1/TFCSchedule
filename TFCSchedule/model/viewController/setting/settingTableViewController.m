//
//  settingTableViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "settingTableViewController.h"
#import "signInViewController.h"
#import "intelligentListTableViewController.h"
#import "preferencesTableViewController.h"
#import "advancedSelectionTableViewController.h"
#import "helpTableViewController.h"
#import "aboutTableViewController.h"

@interface settingTableViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *loginCell;

@end

@implementation settingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    if([self.tableView respondsToSelector:@selector(setSeparatorInset:)])
    {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if(section == 0)
    {
        return 1;
    }
    else if(section == 1)
    {
        return 3;
    }
    else if(section == 2)
    {
        return 1;
    }
    else return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    
    switch (indexPath.section) {
        case 0:
            return self.loginCell;
            break;
        case 1:
            if(indexPath.row == 0)
            {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
                cell.imageView.image = [UIImage imageNamed:@"settings_smart_project_icon"];
                cell.textLabel.text = @"智能清单";
            }
            else if (indexPath.row == 1)
            {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
                cell.imageView.image = [UIImage imageNamed:@"settings_preferences_icon"];
                cell.textLabel.text = @"偏好设置";
            }
            else
            {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
                cell.imageView.image = [UIImage imageNamed:@"settings_advanced_icon"];
                cell.textLabel.text = @"高级选项";
            }
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 2:
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
            cell.imageView.image = [UIImage imageNamed:@"account_type_wechat"];
            cell.textLabel.text = @"玩转微信公众号";
            break;
        case 3:
            if(indexPath.row == 0)
            {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
                cell.imageView.image = [UIImage imageNamed:@"settings_help_icon"];
                cell.textLabel.text = @"帮助";
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }
            else if (indexPath.row == 1)
            {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
                cell.imageView.image = [UIImage imageNamed:@"settings_about_icon"];
                cell.textLabel.text = @"关于";
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }
            else
            {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
                cell.imageView.image = [UIImage imageNamed:@"settings_recommend_icon"];
                cell.textLabel.text = @"推荐给好友";
            }
            break;
    }
    
    return cell;
}

//选中某一行动作
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    signInViewController *signInVC = [[signInViewController alloc]initWithNibName:@"signInViewController" bundle:nil];
    intelligentListTableViewController *intelligentLisVC = [[intelligentListTableViewController alloc]initWithNibName:@"intelligentListTableViewController" bundle:nil];
    preferencesTableViewController *preferencesVC = [[preferencesTableViewController alloc]initWithNibName:@"preferencesTableViewController" bundle:nil];
    advancedSelectionTableViewController *advancedSelectionVC = [[advancedSelectionTableViewController alloc]initWithNibName:@"advancedSelectionTableViewController" bundle:nil];
    helpTableViewController *helpVC = [[helpTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    aboutTableViewController *aboutVC = [[aboutTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    switch (indexPath.section) {
        case 0:
            [self.navigationController pushViewController:signInVC animated:YES];
            break;
        case 1:
            if(indexPath.row == 0)
            {
                [self.navigationController pushViewController:intelligentLisVC animated:YES];
            }
            else if (indexPath.row == 1)
            {
                [self.navigationController pushViewController:preferencesVC animated:YES];
            }
            else
            {
                [self.navigationController pushViewController:advancedSelectionVC animated:YES];
            }
            break;
        case  3:
            if(indexPath.row == 0)
            {
                [self.navigationController pushViewController:helpVC animated:YES];
            }
            if(indexPath.row == 1)
            {
                [self.navigationController pushViewController:aboutVC animated:YES];
            }
            break;
        default:
            break;
    }
}

//设置行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
    {
        return 70;
    }
    else return 50;
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 5;
}
@end
