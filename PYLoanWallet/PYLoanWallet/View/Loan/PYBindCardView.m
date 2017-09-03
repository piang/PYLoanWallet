//
//  PYBindCardView.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/9/3.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYBindCardView.h"

@implementation PYBindCardView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init {
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        UILabel *titleLable = [[UILabel alloc] init];
        [self addSubview:titleLable];
        titleLable.font = [UIFont systemFontOfSize:16];
        titleLable.text = @"添加银行卡";
        [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(68);
            make.centerX.equalTo(self);
        }];
        
        UILabel *subTitleLabel = [[UILabel alloc] init];
        [self addSubview:subTitleLabel];
        subTitleLabel.font = [UIFont systemFontOfSize:12];
        subTitleLabel.textColor = UIColorFromRGB(0x9B9B9B);
        subTitleLabel.text = @"请添加一张本人的银行借记卡激活贷款额度";
        [subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(titleLable.mas_bottom).offset(8);
            make.centerX.equalTo(self);
        }];
        
        UIImageView *bankCardImageView = [[UIImageView alloc] init];
        [self addSubview:bankCardImageView];
        [bankCardImageView setImage:[UIImage imageNamed:@"bankCard"]];
        [bankCardImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(subTitleLabel.mas_bottom).offset(27);
            make.centerX.equalTo(self);
        }];
        
        UIButton *bindCardButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:bindCardButton];
        [bindCardButton setBackgroundColor:UIColorFromRGB(0x2EA5E5)];
        [bindCardButton setTitle:@"添加银行卡" forState:UIControlStateNormal];
        bindCardButton.layer.cornerRadius = 3;
        [bindCardButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(39);
            make.width.mas_equalTo(190);
            make.centerX.equalTo(self);
            make.top.equalTo(bankCardImageView.mas_bottom).offset(120);
        }];
        _bindCardButton = bindCardButton;
        
    }
    return self;
}

@end
