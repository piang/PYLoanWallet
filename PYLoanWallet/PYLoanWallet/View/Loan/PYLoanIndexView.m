//
//  PYLoanIndexView.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/29.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYLoanIndexView.h"


@implementation PYLoanIndexView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init {
    self = [super init];
    if (self) {
        
        UIButton *testButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [self addSubview:testButton];
        [testButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(100);
            make.left.mas_equalTo(100);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(100);
        }];
        testButton.backgroundColor = [UIColor orangeColor];
        _testButton = testButton;
    }
    return self;
}

@end
