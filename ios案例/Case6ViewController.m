//
//  Case6ViewController.m
//  ios案例
//
//  Created by sandy on 16/3/10.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "Case6ViewController.h"
#import "Masonry.h"
#import "case6CollectionViewCell.h"

@interface Case6ViewController ()
@property(strong,nonatomic) NSArray *arr;
@property(strong,nonatomic) NSArray *titles;
@end

@implementation Case6ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"奥运会比赛项目";
    
    _arr = [NSArray arrayWithObjects:@"archery.gif", @"athletics.gif",@"badminton.gif",@"basketball.gif",@"beach-volleyball.gif",@"boxing.gif",@"canoe-slalom.gif",@"canoe-sprint.gif",nil];
    
     _titles = [NSArray arrayWithObjects:@"archery", @"athletics",@"badminton",@"basketball",@"beach volleyball",@"boxing",@"canoe slalom",@"canoe sprint",nil];
    
    //确定是水平滚动 还是垂直滚动
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    //集合控制器
    UICollectionView *cv = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    cv.backgroundColor = [UIColor whiteColor];
    cv.dataSource = self;
    cv.delegate = self;
    
    //注册cell 必须要有
    [cv registerClass:[case6CollectionViewCell class] forCellWithReuseIdentifier:@"GradientCell"];
    
    [self.view addSubview:cv];
    
   /* [cv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(0);
        make.right.equalTo(self.view).offset(0);
        make.top.equalTo(self.view).offset(88);
    }];
*/
    
    
    // Do any additional setup after loading the view.
}
//定义展示UIcollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [_titles count];
}

//定义展示section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * CellIdentifier = @"GradientCell";
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
   
    cell.backgroundColor = [UIColor whiteColor];
    
   /* cell.backgroundColor = [UIColor colorWithRed:((10 * indexPath.row) / 255.0) green:((20 * indexPath.row)/255.0) blue:((30 * indexPath.row)/255.0) alpha:1.0f];*/
    UIImageView *iv = [[UIImageView alloc] init];
    iv.image =[UIImage imageNamed:_arr[indexPath.row]];
    
    [cell addSubview:iv];
    
    [iv mas_makeConstraints:^(MASConstraintMaker *make) {
       // make.width.equalTo(@150);
      //  make.height.equalTo(@150);
        make.left.equalTo(cell).offset(0);
        make.top.equalTo(cell).offset(0);
        
        
    }];
    
    
    UILabel *lab = [[UILabel alloc] init];
    lab.text = _titles[indexPath.row];
    lab.textColor = [UIColor lightGrayColor];
    lab.textAlignment = NSTextAlignmentCenter;
    
    [cell addSubview:lab];
    
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(cell).offset(0);
        make.right.equalTo(cell).offset(0);
        make.top.equalTo(iv.mas_bottom).offset(10);
    }];
    
    
    return cell;
}

//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(150, 180);
}
//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 30, 5,30);
}


//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
}
//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
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
