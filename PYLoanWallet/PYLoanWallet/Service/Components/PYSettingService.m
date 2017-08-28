//
//  PYSettingService.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/28.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYSettingService.h"
#import <AVOSCloud/AVOSCloud.h>

@interface PYSettingService()

@property (assign,nonatomic,readwrite) PYAPPStatusEnum status;

@end

#define USERDEFAULT_APP_STATUS_SETTING @"UserDefaultAPPStatusSetting"

@implementation PYSettingService

@synthesize status = _status;

+(PYSettingService *)shared {
    static PYSettingService *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[PYSettingService alloc] init];
        
        [AVOSCloud setApplicationId:@"XpuV4q5fN2hj9hGr4CwzYvHO-gzGzoHsz" clientKey:@"vOcE9YRm4PLFdxv3GYrnkTVb"];
        AVQuery *query = [AVQuery queryWithClassName:@"channel_switch"];
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [query getObjectInBackgroundWithId:@"587383a38d6d81006c3b531b" block:^(AVObject *object, NSError *error) {
                NSLog(@"object%@",object);
                if ([object[@"is_open"] boolValue]) {
                    [[NSUserDefaults standardUserDefaults] setObject:@([object[@"is_open"] integerValue]) forKey:USERDEFAULT_APP_STATUS_SETTING];
                }
                
            }];
        });
        
    });
    return instance;
}

- (PYAPPStatusEnum)status {
    
    if (!_status) {
        _status = [[[NSUserDefaults standardUserDefaults] objectForKey:USERDEFAULT_APP_STATUS_SETTING] integerValue];
    }
    
    return _status;
}

- (void)setStatus:(PYAPPStatusEnum)status {
    [[NSUserDefaults standardUserDefaults] setObject:@(status) forKey:USERDEFAULT_APP_STATUS_SETTING];
    _status = status;
}

@end
