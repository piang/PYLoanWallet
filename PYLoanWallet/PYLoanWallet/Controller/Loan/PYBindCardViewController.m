//
//  PYBindCardViewController.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/9/3.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYBindCardViewController.h"
#import "PYBindCardView.h"

@interface PYBindCardViewController ()

@end

@implementation PYBindCardViewController

- (void)loadView {
    PYBindCardView *bindCardView = [[PYBindCardView alloc] init];
    self.view = bindCardView;
    [bindCardView.bindCardButton addTarget:self action:@selector(bindCardAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)bindCardAction:(UIButton *)sender {
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
