//
//  PYSettingService.h
//  PYLoanWallet
//
//  Created by 洋 裴 on 2017/8/28.
//  Copyright © 2017年 piang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYSettingServiceProtocol.h"

@interface PYSettingService : NSObject<PYSettingServiceProtocol>

+ (PYSettingService *)shared;

@end
