//
//  helloworldViewController.m
//  ios案例
//
//  Created by sandy on 16/3/7.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "helloworldViewController.h"
#import "Masonry.h"

@interface helloworldViewController ()

@end

@implementation helloworldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Hello World!";
    
    UILabel *lbl = [[UILabel alloc] init];
    lbl.text = @"Hello World!";
    lbl.font = [UIFont fontWithName:@"黑体" size:14.0];
    
    [self.view addSubview:lbl];
    
    [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.mas_centerY);
        make.centerX.equalTo(self.view.mas_centerX);
    }];
    
    
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
