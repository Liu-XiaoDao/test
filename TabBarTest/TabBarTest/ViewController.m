//
//  ViewController.m
//  TabBarTest
//
//  Created by Ibokan on 15/12/28.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"微信" image:[UIImage imageNamed:@"iconfont-weixin.png"] tag:100];
    
    self.tabBarItem.badgeValue=@"111";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
