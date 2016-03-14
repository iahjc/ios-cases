//
//  case6CollectionViewCell.m
//  ios案例
//
//  Created by sandy on 16/3/11.
//  Copyright © 2016年 sandy. All rights reserved.
//

#import "case6CollectionViewCell.h"
#import "Masonry.h"

@implementation case6CollectionViewCell

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor purpleColor];
        
        self.iv = [[UIImageView alloc] init];
        
        [self addSubview:_iv];
        
        [_iv mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(@150);
            make.height.equalTo(@150);
            
        }];
        
        
        self.lb = [[UILabel alloc] init];
        [self addSubview:_lb];
    }
    return self;
}


@end
