//
//  TFMomentHeaderView.h
//  TFPhotoBrowser
//
//  Created by Melvin on 2/16/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface TFMomentHeaderView : UICollectionReusableView


@property (nonatomic, strong, readonly) UILabel *primaryLabel;
@property (nonatomic, strong, readonly) UILabel *secondaryLabel;
@property (nonatomic, strong, readonly) UILabel *detailLabel;

@end
NS_ASSUME_NONNULL_END