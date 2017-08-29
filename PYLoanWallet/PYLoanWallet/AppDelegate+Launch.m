//
//  AppDelegate+Launch.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/27.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "AppDelegate+Launch.h"
#import "PYHomeViewController.h"

@implementation AppDelegate (Launch)

- (void)loadRootViewController {
    [UIApplication sharedApplication].delegate.window.rootViewController = [[PYHomeViewController alloc] init];
}

@end
