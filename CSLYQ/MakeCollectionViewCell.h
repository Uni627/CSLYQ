//
//  MakeCollectionViewCell.h
//  CSLYQ
//
//  Created by 罗超 on 16/3/7.
//  Copyright © 2016年 罗超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) UILabel *makeLaebl;

- (void) refresh:(NSString *)text;

@end
