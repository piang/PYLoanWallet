//
//  PYHomeViewController.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/29.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYHomeViewController.h"
#import "PYLoanIndexViewController.h"

@interface PYHomeViewController ()

@property (strong,nonatomic) UITabBarController *tabBarController;

@end

@implementation PYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBarController = [[UITabBarController alloc] init];
    [self addChildViewController:self.tabBarController];
    [self.view addSubview:self.tabBarController.view];
    
    
    UINavigationController *loanIndexNavigationController = ({
        PYLoanIndexViewController *loanIndexViewController = [[PYLoanIndexViewController alloc] init];
        UIImage *normalIcon = [UIImage imageNamed:@"bank"];
        loanIndexViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"贷款" image:normalIcon tag:0],
        [[UINavigationController alloc] initWithRootViewController:loanIndexViewController];
});
    
    
    PYViewController *orangeViewController = [[PYViewController alloc] init];
    orangeViewController.view.backgroundColor = [UIColor orangeColor];
    
    self.tabBarController.viewControllers = @[loanIndexNavigationController,orangeViewController];
    
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
