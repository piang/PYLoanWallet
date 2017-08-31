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
        self.backgroundColor = [UIColor redColor];
        UIButton *testButton = [UIButton buttonWithType:UIButtonTypeSystem];
        testButton.frame = CGRectMake(0, 0, 100, 100);
        testButton.backgroundColor = [UIColor orangeColor];
        [self addSubview:testButton];
        
        [testButton addTarget:self action:@selector(goTo:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)bindViewModel:(id<PYViewModelProtocol>)viewModel {
    
}

@end
