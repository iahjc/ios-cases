//
//  oneViewController.m
//  ios案例
//
//  Created by sandy on 16/3/8.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "oneViewController.h"
#import "Masonry.h"

@interface oneViewController ()

@end

@implementation oneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"one";
    // Do any additional setup after loading the view.
    
    UILabel *lbl = [[UILabel alloc] init];
    lbl.text = @"one";
    lbl.textColor = [UIColor grayColor];
    
    [self.view addSubview:lbl];
    
    [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(160);
        
        make.centerX.equalTo(self.view.mas_centerX);
    
    }];
    
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
