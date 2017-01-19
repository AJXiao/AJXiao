//
//  CommonRequest.m
//  PrivatePod
//
//  Created by AJMD on 17/1/18.
//  Copyright © 2017年 AJMD. All rights reserved.
//

#import "CommonRequest.h"
#import "AJXiaoRedView+Test.h"
#import "AFHTTPSessionManager.h"

@interface CommonRequest ()

@end

@implementation CommonRequest

static id _commonRequest = nil;
+(instancetype)shareManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _commonRequest = [[CommonRequest alloc]init];
        AJXiaoRedView * redview = nil;
        [redview test];
    });
    return _commonRequest;
}

- (void)bindingAFNetworkingTest{
    //模拟依赖AFNetworking
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSLog(@"%@",manager);
}



@end
