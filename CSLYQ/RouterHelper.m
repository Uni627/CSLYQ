//
//  RouterHelper.m
//  FastPhotoBook
//
//  Created by Melvin on 9/8/15.
//  Copyright © 2015 TimeFace. All rights reserved.
//

#import "RouterHelper.h"



@implementation RouterHelper

+ (instancetype) shared {
    static dispatch_once_t once;
    static id instance;
    dispatch_once(&once, ^{instance = self.new;});
    return instance;
}

- (void)routers {
//    [[HHRouter shared] map:@"/books/:memberId/:back" toControllerClass:[OthersTimeBooksViewController class]];
}

@end
