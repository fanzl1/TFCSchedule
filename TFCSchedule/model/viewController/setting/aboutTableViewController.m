//
//  aboutTableViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/25.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "aboutTableViewController.h"

@interface aboutTableViewController ()

@end

@implementation aboutTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"关于";
    //设置表头视图
    //UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 150)];
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 120)/2, 10, 120, 120)];
    imageView.image = [UIImage imageNamed:@"welcome_logo_dida"];
    [headerView addSubview:imageView];
    UILabel *versionLabel = [[UILabel alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 120)/2, 135, 120, 10)];
    versionLabel.text = @"版本 2.0.4";
    versionLabel.font = [UIFont systemFontOfSize:14];
    versionLabel.textColor = [UIColor colorWithRed:0.15 green:0.5 blue:1 alpha:1];
    versionLabel.textAlignment = NSTextAlignmentCenter;
    [headerView addSubview:versionLabel];
    self.tableView.tableHeaderView = headerView;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 2;
            break;
            
        case 1:
            return 3;
            break;
            
        case 2:
            return 1;
            break;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    switch (indexPath.section) {
        case 0:
            if(indexPath.row == 0)
            {
                cell.textLabel.text = @"去评分";
            }
            else
            {
                cell.textLabel.text = @"访问官网";
            }
            break;
            
        case 1:
            if(indexPath.row == 0)
            {
                cell.textLabel.text = @"使用条款";
            }
            else if (indexPath.row == 1)
            {
                cell.textLabel.text = @"隐私声明";
            }
            else cell.textLabel.text = @"开源协议";
            break;
            
        case 2:
            cell.textLabel.text = @"致谢";
            break;
        
    }
    //字体大小
    cell.textLabel.font = [UIFont systemFontOfSize:18];
    //字体颜色
    cell.textLabel.textColor = [UIColor colorWithRed:0.15 green:0.5 blue:1 alpha:1];
    //cell辅助视图
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
#warning 补充点击事件
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
