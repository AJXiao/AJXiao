//
//  AJImageView.m
//  PrivatePod
//
//  Created by AJMD on 17/1/18.
//  Copyright © 2017年 AJMD. All rights reserved.
//

#import "AJImageView.h"
#import "UIImageView+WebCache.h"

@interface AJImageView ()


@end


@implementation AJImageView

- (instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        //模拟依赖SDWebImage
        [self sd_setImageWithURL:nil];
    }
    return self;
}

@end
