//
//  PYNetFetchServiceProtocol.h
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/30.
//  Copyright © 2017年 piang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVOSCloud/AVOSCloud.h>

@protocol PYNetFetchServiceProtocol <NSObject>

- (AVObject *)getObjectWithClassName:(NSString *)className WithId:(NSString *)objectId;

@end
