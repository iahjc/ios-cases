//
//  Case2ViewController.m
//  ios案例
//
//  Created by sandy on 16/3/8.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "Case2ViewController.h"
#import "oneViewController.h"
#import "twoViewController.h"


@interface Case2ViewController ()
@property(nonatomic,strong) UIViewController *one;
@property(nonatomic,strong) UIViewController *two;
@end

@implementation Case2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"底部视图控制器";
    
    _one = [[oneViewController alloc] init];
    _two = [[twoViewController alloc] init];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"one" image:nil tag:1];
    _one.tabBarItem = item1;
    
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"two" image:nil tag:2];
    _two.tabBarItem = item2;
    
    self.viewControllers = [NSArray arrayWithObjects:_one,_two, nil];
    
    // Do any additional setup after loading the view.
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
