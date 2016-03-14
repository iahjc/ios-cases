//
//  rootTableViewController.m
//  ios案例
//
//  Created by sandy on 16/3/7.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "rootTableViewController.h"
#import "Masonry.h"

//导入控制器
#import "helloworldViewController.h"
#import "Case2ViewController.h"
#import "Case3ViewController.h"
#import "Case4ViewController.h"
#import "Case5ViewController.h"
#import "Case6ViewController.h"

@interface rootTableViewController ()

@end

@implementation rootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"案例列表";
    
    
    
    _TitleDatas = [[NSArray alloc] initWithObjects:
                   @"hello world   case-1",
                   @"底部视图控制器 case-2",
                   @"点击按钮label改变内容 case-3",
                   @"简单表单 case-4",
                   @"打开和关闭键盘通知 case-5",
                   @"奥运会比赛项目 case-6",
                   nil];
    _DesDatas = [[NSArray alloc] initWithObjects:
                 @"这是我的第一个ios小程序",
                 @"简单的底部视图控制器",
                 @"点击按钮label改变内容",
                 @"label,textfield,textView应用",
                 @"打开和关闭键盘通知 ",
                 @"奥运会比赛项目 UICollectionView",
                 nil];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _TitleDatas.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"myCell"];
    }
    
    NSUInteger row = indexPath.row;
    
    cell.textLabel.text = [_TitleDatas objectAtIndex:row];
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:(15.0)];
    cell.detailTextLabel.text = [_DesDatas objectAtIndex:row];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger row = indexPath.row;

    switch (row) {
        case 0:
            [self.navigationController pushViewController:[[helloworldViewController alloc] init] animated:YES];
            break;
        case 1:
            [self.navigationController pushViewController:[[Case2ViewController alloc] init] animated:YES];
            break;
        case 2:
            [self.navigationController pushViewController:[[Case3ViewController alloc] init] animated:YES];
            break;
        case 3:
            [self.navigationController pushViewController:[[Case4ViewController alloc] init] animated:YES];
        case 4:
            [self.navigationController pushViewController:[[Case5ViewController alloc] init] animated:YES];
            break;
        case 5:
            [self.navigationController pushViewController:[[Case6ViewController alloc] init] animated:YES];
        default:
            break;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
