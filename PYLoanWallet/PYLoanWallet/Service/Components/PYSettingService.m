//
//  PYSettingService.m
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/28.
//  Copyright © 2017年 piang. All rights reserved.
//

#import "PYSettingService.h"
#import "PYNetFetchServiceProtocol.h"
#import "PYNetFetchService.h"

#define USERDEFAULT_APP_STATUS_SETTING @"UserDefaultAPPStatusSetting"

#define NETFETCH_CLASS_NAME @"channel_switch"
#define NETFETCH_ID @"587383a38d6d81006c3b531b"

@interface PYSettingService()

@property (assign,nonatomic,readwrite) PYAPPStatusEnum status;
@property (strong,nonatomic) id<PYNetFetchServiceProtocol> netFetchService;

@end



@implementation PYSettingService

@synthesize status = _status;

+(PYSettingService *)shared {
    static PYSettingService *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[PYSettingService alloc] init];
        
        instance.netFetchService = [[PYNetFetchService alloc] init];
        
        AVObject *object = [instance.netFetchService getObjectWithClassName:NETFETCH_CLASS_NAME WithId:NETFETCH_ID];
        
        if ([object[@"is_open"] boolValue]) {
            [[NSUserDefaults standardUserDefaults] setObject:@([object[@"is_open"] integerValue]) forKey:USERDEFAULT_APP_STATUS_SETTING];
        }
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
