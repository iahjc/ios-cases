//
//  Case5ViewController.m
//  ios案例
//
//  Created by sandy on 16/3/10.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "Case5ViewController.h"
#import "Masonry.h"
#import "MBProgressHUD.h"

@interface Case5ViewController ()

@end

@implementation Case5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextField *tf = [[UITextField alloc] init];
    tf.placeholder = @"请输入文字";
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.delegate = self;
    [self.view addSubview:tf];
    
    [tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(30);
        make.right.equalTo(self.view).with.offset(-30);
        make.top.equalTo(self.view).with.offset(80);
    }];
    
    //注册键盘出现通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    
    //注册键盘隐藏通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
    
}

//获取键盘通知
-(void)keyboardDidShow:(NSNotification *)notif{
    
    NSLog(@"打开键盘");
    
    MBProgressHUD *mbp = [[MBProgressHUD alloc] initWithView:self.view];
    mbp.labelText = @"打开键盘";
    mbp.mode = MBProgressHUDModeText;
    [self.view addSubview:mbp];
    
    [mbp showAnimated:YES whileExecutingBlock:^{
        sleep(3);
    }];
    
}

-(void)keyboardDidHide:(NSNotification *)notif{
    NSLog(@"关闭键盘");
    MBProgressHUD *mbp = [[MBProgressHUD alloc] initWithView:self.view];
    mbp.labelText = @"关闭键盘";
    mbp.mode = MBProgressHUDModeText;
    [self.view addSubview:mbp];
    
    [mbp showAnimated:YES whileExecutingBlock:^{
        sleep(3);
    }];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
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
