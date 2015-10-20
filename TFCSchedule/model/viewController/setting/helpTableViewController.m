//
//  helpTableViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/25.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "helpTableViewController.h"

@interface helpTableViewController ()

@end

@implementation helpTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"帮助";
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    if(indexPath.row == 0)
    {
        cell.textLabel.text = @"使用手册";
    }
    else if(indexPath.row == 1)
    {
        cell.textLabel.text = @"帮助中心";
    }
    else
    {
        cell.textLabel.text = @"反馈";
    }
    cell.textLabel.font = [UIFont systemFontOfSize:18];
    cell.textLabel.textColor = [UIColor colorWithRed:0.15 green:0.5 blue:1 alpha:1];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}
@end
