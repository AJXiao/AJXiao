//
//  AJXiaoRedView.m
//  PrivatePod
//
//  Created by AJMD on 17/1/18.
//  Copyright © 2017年 AJMD. All rights reserved.
//

#import "AJXiaoRedView.h"

@interface AJXiaoRedView()

@end


@implementation AJXiaoRedView

- (instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self pri_decorateChildViews];
    //装饰border
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
}

#pragma mark -private
- (void)pri_decorateChildViews{
    self.backgroundColor = [UIColor redColor];
    
    UILabel *label = [[UILabel alloc]init];
    label.text     = @"Private";
    label.font     = [UIFont systemFontOfSize:17];
    label.textColor = [UIColor blackColor];
    [label sizeToFit];
    label.center = CGPointMake(self.frame.size.width*0.5,self.frame.size.width*0.5);
    [self addSubview:label];
}
@end
