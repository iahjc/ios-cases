//
//  Case3ViewController.m
//  ios案例
//
//  Created by sandy on 16/3/8.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "Case3ViewController.h"
#import "Masonry.h"



@interface Case3ViewController ()
@property(strong,nonatomic) UILabel *lbl;
@property BOOL nsBool;
@end

@implementation Case3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _nsBool = YES;
    
    //label
    _lbl = [[UILabel alloc] init];
    _lbl.text = @"label";
    _lbl.textColor = [UIColor grayColor];
    
    [self.view addSubview:_lbl];
    
    
    //button
    UIButton  *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"改变label的标题" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:btn];
    
    [_lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        //make. centerY.equalTo(self.view.mas_centerY);
        make.top.equalTo(self.view).with.offset(160);
    }];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make. centerY.equalTo(self.view.mas_centerY);
        //make.top.equalTo(lbl.mas_bottom).offset(30);
    }];
    
    [btn addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view.
}

-(void)onClick{
    NSLog(@"cc");
    
    if (_nsBool) {
        _lbl.text = @"修改之后的文字";
        _nsBool = NO;
    }else{
        _lbl.text = @"Label";
        _nsBool = YES;
    }
    
    
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
