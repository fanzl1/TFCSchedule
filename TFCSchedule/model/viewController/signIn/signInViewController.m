//
//  signInViewController.m
//  TFCSchedule
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tfc. All rights reserved.
//

#import "signInViewController.h"

@interface signInViewController ()

@end

@implementation signInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //隐藏导航栏
    self.navigationController.navigationBar.hidden = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//隐藏状态栏
-(BOOL)prefersStatusBarHidden
{
    return YES;
}

- (IBAction)closeSignIn:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    self.navigationController.navigationBar.hidden = NO;
    NSLog(@"close signInVC");
}
- (IBAction)qqSignIn:(id)sender {
    NSLog(@"qq signIn");
}
- (IBAction)wechatSignIn:(id)sender {
    NSLog(@"wechat signIn");
}
- (IBAction)weiboSighIn:(UIButton *)sender {
    NSLog(@"...");
}

- (IBAction)registeDida:(id)sender {
    NSLog(@"registe");
}
- (IBAction)signInDida:(id)sender {
    NSLog(@"signIn");
}

@end
