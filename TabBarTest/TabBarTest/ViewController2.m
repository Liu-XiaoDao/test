//
//  ViewController2.m
//  TabBarTest
//
//  Created by Ibokan on 15/12/28.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBarController.tabBar.tintColor= [UIColor colorWithRed:70 / 255. green:170 / 255. blue:0 alpha:1.0];
//    self.tabBar.tintColor = [UIColor colorWithRed:70 / 255. green:170 / 255. blue:0 alpha:1.0];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"微信" image:[UIImage imageNamed:@"iconfont-weixin.png"] tag:100];
    self.tabBarItem.badgeValue=@"333";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
