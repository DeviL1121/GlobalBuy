//
//  GBTabBarView.m
//  GlobalSpace
//
//  Created by 李林 on 16/8/19.
//  Copyright © 2016年 StarSpace. All rights reserved.
//

#import "GBTabBarView.h"

#define kTabBarButtonCount 4
#define kTabBarButtonWidth  (self.frame.size.width / kTabBarButtonCount)
#define kTabBarButtonHeight 49

@implementation GBTabBarView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"costom tabbar");
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    NSInteger tabBarButtonIndex = 0;
    for (UIView *subview in self.subviews) {
        if ([subview isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            subview.frame = CGRectMake(tabBarButtonIndex * kTabBarButtonWidth, 0, kTabBarButtonWidth, kTabBarButtonHeight);
            tabBarButtonIndex ++;
        }
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
