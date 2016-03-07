//
//  TimeLineTextStyle.m
//  TimeFaceV3
//
//  Created by Melvin on 12/21/15.
//  Copyright © 2015 timeface. All rights reserved.
//

#import "TimeLineTextStyle.h"
#import "TFSpecsStyle.h"

@implementation TimeLineTextStyle

+ (NSDictionary *)nickNameStyle {
    return @{NSFontAttributeName : TFSTYLEVAR(font14B),
             NSForegroundColorAttributeName:TFSTYLEVAR(defaultBlackColor)};
}

+ (NSDictionary *)subTextStyle {
    return @{NSFontAttributeName:TFSTYLEVAR(font12),
             NSForegroundColorAttributeName:TFSTYLEVAR(defaultGrayColor)};
}
+ (NSDictionary *)titleStyle {
    return @{NSFontAttributeName:TFSTYLEVAR(font14B),
             NSForegroundColorAttributeName:TFSTYLEVAR(defaultBlackColor)};
}
+ (NSDictionary *)contentStyle {
    return @{NSFontAttributeName:TFSTYLEVAR(font14),
             NSForegroundColorAttributeName:TFSTYLEVAR(defaultBlackColor)};
}
+ (NSDictionary *)contentLinkStyle {
    return @{NSFontAttributeName:TFSTYLEVAR(font14),
             NSForegroundColorAttributeName:[UIColor blueColor]};
}
+ (NSDictionary *)bookTitleStyle {
    return @{NSFontAttributeName:TFSTYLEVAR(font12),
             NSForegroundColorAttributeName:TFSTYLEVAR(defaultLightBlackColor)};
}
+ (NSDictionary *)cellControlStyle {
    return @{NSFontAttributeName : [UIFont systemFontOfSize:12.0],
             NSForegroundColorAttributeName:TFSTYLEVAR(defaultLightBlackColor)};
}

+ (NSDictionary *)cellControlColoredStyle {
    return @{NSFontAttributeName : [UIFont systemFontOfSize:12.0],
             NSForegroundColorAttributeName:TFSTYLEVAR(defaultPinkRedColor)};
}

+ (NSDictionary *)cellTextColoredStyle{
    return @{NSFontAttributeName : [UIFont systemFontOfSize:12.0],
             NSForegroundColorAttributeName:[UIColor whiteColor]};
}
@end
