//
//  RingtoneTableViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/27.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "RingtoneTableViewController.h"
#import "ringtoneCell.h"

@interface RingtoneTableViewController ()
@property(nonatomic,strong)NSArray *nameArray;
@property(nonatomic,strong)NSArray *checkImageArray;

@end

@implementation RingtoneTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"铃声";
    //初始化数据源
    _nameArray = @[@{
                       @"name":@"默认"
                    },
                   @{
                       @"name":@"铃声1"
                    },
                   @{
                       @"name":@"铃声2"
                    },
                   @{
                       @"name":@"铃声3"
                    }
                   ];
    _checkImageArray = @[@{
                             @"showImageView":@(YES)
                             },
                         @{
                             @"showImageView":@(NO)
                             },
                         @{
                             @"showImageView":@(NO)
                             },
                         @{
                             @"showImageView":@(NO)
                             }
                      ];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ringtoneCell *cell = [[ringtoneCell alloc]init];
    //设置文本
    cell.ringtoneName.text = _nameArray[indexPath.row][@"name"];
    cell.showCheckImageView = [_checkImageArray[indexPath.row][@"showImageView"] boolValue];
    //设置checkmark
    return cell;
}
//点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //修改showImageView的值
    NSInteger *indexpathRow = indexPath.row;
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}

@end
