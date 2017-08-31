//
//  PYNetFetchService.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/30.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYNetFetchService.h"

#define APPLICATION_ID @"XpuV4q5fN2hj9hGr4CwzYvHO-gzGzoHsz"
#define CLIENT_KEY @"vOcE9YRm4PLFdxv3GYrnkTVb"

@interface PYNetFetchService()


@end

@implementation PYNetFetchService

- (instancetype)init {
    if (self = [super init]) {
        [AVOSCloud setApplicationId:APPLICATION_ID clientKey:CLIENT_KEY];
    }
    return self;
}

- (AVObject *)getObjectWithClassName:(NSString *)className WithId:(NSString *)objectId {
    AVQuery *query = [AVQuery queryWithClassName:className];
    return [query getObjectWithId:objectId];
}

@end
