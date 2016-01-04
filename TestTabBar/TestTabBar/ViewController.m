//
//  ViewController.m
//  TestTabBar
//
//  Created by Ibokan on 15/12/27.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btn:(UIButton *)sender {
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    [self transitionWithType:@"oglFlip" WithSubtype:kCATransitionFromRight ForView:self.navigationController.view];
    //由storyboard根据myView的storyBoardID来获取我们要切换的视图
    UIViewController* myReport = [story instantiateViewControllerWithIdentifier:@"hahaha"];
    //由navigationController推向我们要推向的view
    [self.navigationController pushViewController:myReport animated:NO];
}
- (void) transitionWithType:(NSString *) type WithSubtype:(NSString *) subtype ForView : (UIView *) view {
    //创建CATransition对象
    CATransition *animation = [CATransition animation];
    //设置运动时间
    animation.duration = 1;
    //设置运动type
    animation.type = type;
    if (subtype != nil) {
        //设置子类
        animation.subtype = subtype;
    }
    //设置运动速度
    animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
    [view.layer addAnimation:animation forKey:@"animation"];
}
@end
