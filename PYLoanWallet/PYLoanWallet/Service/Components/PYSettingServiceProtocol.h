//
//  PYSettingServiceProtocol.h
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/28.
//  Copyright © 2017年 piang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,PYAPPStatusEnum) {
    
    PYAPPStatusEnum_Online,
    
    PYAPPStatusEnum_OffLine
};

@protocol PYSettingServiceProtocol <NSObject>

@property (assign,nonatomic,readonly) PYAPPStatusEnum status;

@end
