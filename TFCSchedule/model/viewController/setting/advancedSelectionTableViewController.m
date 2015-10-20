//
//  advancedSelectionTableViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/25.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "advancedSelectionTableViewController.h"

@interface advancedSelectionTableViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *discoveryCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *subscribeCalendar;
@property (strong, nonatomic) IBOutlet UITableViewCell *reminderAndSiri;
@property (strong, nonatomic) IBOutlet UITableViewCell *passwordLock;
@property (strong, nonatomic) IBOutlet UITableViewCell *voiceInput;

@end

@implementation advancedSelectionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"高级选项";

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if(section == 1)
    {
        return 2;
    }
    else return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    switch (indexPath.section) {
        case 0:
            return self.discoveryCell;
            break;
        case 1:
            if(indexPath.row == 0)
            {
                return self.subscribeCalendar;
            }
            else return self.reminderAndSiri;
            break;
        case 2:
            return self.passwordLock;
            break;
        case 3:
            return self.voiceInput;
            break;
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"探索任务之外的生活趣事";
    }
    return 0;
}
@end
