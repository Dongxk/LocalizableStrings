//
//  ViewController.m
//  LocalizableStrings
//
//  Created by Dongxk on 2018/4/19.
//  Copyright © 2018年 Dongxk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = NSLocalizedString(@"KLogin_Title", nil);
    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(self.view.frame.size.width / 2 - 50, self.view.frame.size.height / 2 - 20, 100, 40);
    [btn setTitle:NSLocalizedString(@"KLogin_Login", nil) forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor colorWithRed:79/255.0 green:177/255.0 blue:74/255.0 alpha:1]];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnClicked:(UIButton *)sender{
    
    
    //1、Localizable.strings命名使用NSLocalizedString(key, comment)
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"KLogin_Alert_Title", nil)
                               message:NSLocalizedString(@"KLogin_Alert_Msg", nil)
                              delegate:self
                     cancelButtonTitle:NSLocalizedString(@"B_Cancle", nil) otherButtonTitles:NSLocalizedString(@"KLogin_Alert_Continue", nil), nil];
    
    //2、自定义命名的使用NSLocalizedStringFromTable(key, tbl, comment)，其中tbl是文件的名字(例如：InfoString)
   UIAlertView *alert_info = [[UIAlertView alloc] initWithTitle:NSLocalizedStringFromTable(@"KLogin_Alert_Title", @"InfoString", nil)
                               message:NSLocalizedStringFromTable(@"KLogin_Alert_Msg", @"InfoString", nil)
                              delegate:self
                     cancelButtonTitle:NSLocalizedStringFromTable(@"B_Cancle", @"InfoString", nil) otherButtonTitles:NSLocalizedStringFromTable(@"KLogin_Alert_Continue", @"InfoString",nil), nil];
    
    [alert_info show];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
