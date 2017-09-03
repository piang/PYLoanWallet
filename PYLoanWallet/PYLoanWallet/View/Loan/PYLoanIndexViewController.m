//
//  PYLoanIndexViewController.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/29.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYLoanIndexViewController.h"
#import "PYLoanIndexView.h"
#import "PYBindCardViewController.h"

@interface PYLoanIndexViewController ()

@end

@implementation PYLoanIndexViewController

- (void)loadView {
    PYLoanIndexView *view = [[PYLoanIndexView alloc] init];
    [view.testButton addTarget:self action:@selector(goTo:) forControlEvents:UIControlEventTouchUpInside];
    self.view = view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"贷款";
}

- (void)goTo:(UIButton *)sender {
    PYBindCardViewController *testVC = [[PYBindCardViewController alloc] init];
    testVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:testVC animated:YES];
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
