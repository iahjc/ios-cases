//
//  Case4ViewController.m
//  ios案例
//
//  Created by sandy on 16/3/9.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "Case4ViewController.h"
#import "Masonry.h"

@interface Case4ViewController ()

@end

@implementation Case4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"简单表单";
    
    UILabel *username = [[UILabel alloc] init];
    username.text = @"用户名：";
    username.textColor = [UIColor grayColor];
    username.font = [UIFont fontWithName:@"Helvetica" size:14.0];
    [self.view addSubview:username];
    
    [username mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).with.offset(30);
        make.right.equalTo(self.view.mas_right).with.offset(-30);
        make.top.equalTo(self.view.mas_top).with.offset(90);
    }];
    
    UITextField *userNameText = [[UITextField alloc] init];
    userNameText.placeholder=@"请输入用户名";//默认显示的字
    userNameText.borderStyle = UITextBorderStyleRoundedRect;
    userNameText.delegate = self;
    [self.view addSubview:userNameText];
    
    [userNameText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).with.offset(30);
        make.right.equalTo(self.view.mas_right).with.offset(-30);
        make.top.equalTo(username.mas_bottom).with.offset(20);
    }];
    
    
    UILabel *password = [[UILabel alloc] init];
    password.text = @"密  码：";
    password.textColor = [UIColor grayColor];
    password.font = [UIFont fontWithName:@"Helvetica" size:14.0];
    [self.view addSubview:password];
    
    [password mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).with.offset(30);
        make.right.equalTo(self.view.mas_right).with.offset(-30);
        make.top.equalTo(userNameText.mas_bottom).with.offset(20);
    }];
    
    
    UITextField *passwordField = [[UITextField alloc] init];
    passwordField.placeholder=@"请输入密码";//默认显示的字
    passwordField.secureTextEntry = YES;
    passwordField.borderStyle = UITextBorderStyleRoundedRect;
    passwordField.delegate = self;
    [self.view addSubview:passwordField];
    
    [passwordField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).with.offset(30);
        make.right.equalTo(self.view.mas_right).with.offset(-30);
        make.top.equalTo(password.mas_bottom).with.offset(20);
    }];
    
    UITextView *tv = [[UITextView alloc] init];
    tv.text = @"我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试我是测试";
    tv.textColor = [UIColor lightGrayColor];
    tv.font = [UIFont fontWithName:@"Helvetica" size:12.0];
    tv.layer.borderColor = [[UIColor colorWithRed:230.0/255.0 green:250.0/255.0 blue:250.0/255.0 alpha:1.0]CGColor];
    tv.layer.borderWidth = 2.0;
    tv.layer.cornerRadius = 8.0f;
    tv.delegate = self;
    [self.view addSubview:tv];
    
    [tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).with.offset(30);
        make.right.equalTo(self.view.mas_right).with.offset(-30);
        make.height.equalTo(@80);
        make.top.equalTo(passwordField.mas_bottom).with.offset(20);
    }];
    
    
    // Do any additional setup after loading the view.
}

//关闭键盘 点击return 关闭键盘
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"cc");
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text isEqual:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
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
