//
//  MakeCollectionViewCell.m
//  CSLYQ
//
//  Created by 罗超 on 16/3/7.
//  Copyright © 2016年 罗超. All rights reserved.
//

#import "MakeCollectionViewCell.h"

@implementation MakeCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.makeLaebl];
        self.backgroundColor = TFSTYLEVAR(defaultWhiteColor);
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [_makeLaebl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX);
        make.centerY.mas_equalTo(self.mas_centerY);
    }];
}

- (void)refresh:(NSString *)text {
    _makeLaebl.text = text;
    [_makeLaebl sizeToFit];
}

- (UILabel *)makeLaebl {
    if (!_makeLaebl) {
        _makeLaebl = [[UILabel alloc]initWithFrame:CGRectZero];
        _makeLaebl.textColor = TFSTYLEVAR(defaultGreenColor);
        _makeLaebl.font = TFSTYLEVAR(font14);
    }
    return _makeLaebl;
}
@end
