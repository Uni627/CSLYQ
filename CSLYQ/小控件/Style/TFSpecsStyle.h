//
//  TFSpecsStyle.h
//  TimeFaceV3
//
//  Created by zguanyu on 10/21/15.
//  Copyright © 2015 timeface. All rights reserved.
//

#import <TimeFaceFoundation/TimeFaceFoundation.h>

@interface TFSpecsStyle : TFDefaultStyle


//////////////////////////////////////时光流影视觉规范-字体////////////////////////////////////////////
@property (nonatomic ,readonly) UIFont *font20;
@property (nonatomic ,readonly) UIFont *font20B;

@property (nonatomic ,readonly) UIFont *font22;
@property (nonatomic ,readonly) UIFont *font22B;

@property (nonatomic ,readonly) UIFont *font24;
@property (nonatomic ,readonly) UIFont *font24B;

//////////////////////////////////////时光流影视觉规范-颜色////////////////////////////////////////////

/**
 *  默认黑 #333333
 */
@property (nonatomic ,readonly) UIColor *defaultBlackColor;
/**
 *  纯黑 #000000
 */
@property (nonatomic, readonly) UIColor *defaultPureBlackColor;
/**
 *  浅黑色 #666666
 */
@property (nonatomic, readonly) UIColor *defaultLightBlackColor;
/**
 *  默认蓝 #069bf2
 */
@property (nonatomic ,readonly) UIColor *defaultBlueColor;
/**
 *  选中蓝色  #058ccd
 */
@property (nonatomic, readonly) UIColor *defaultBlueHoverColor;
/**
 *  默认页面背景色 #f2f3f4
 */
@property (nonatomic, readonly) UIColor *defaultBackgroudColor;
/**
 *  默认灰 #999999
 */
@property (nonatomic ,readonly) UIColor *defaultGrayColor;
/**
 *  默认背景灰色
 */
@property (nonatomic ,readonly) UIColor *defaultBackgroundGrayColor;

/**
 *  浅灰色 #cccccc
 */
@property (nonatomic, readonly) UIColor *defaultLightGrayColor;
/**
 *  个性签名灰色  #d1d1d1
 */
@property (nonatomic, readonly) UIColor *defaultSignatureGrayColor;

/**
 *  默认分割线颜色  #e1e1e1
 */
@property (nonatomic ,readonly) UIColor *defaultSplitLineColor;
/**
 *  时光书背景颜色 #eeeeee
 */
@property (nonatomic, readonly) UIColor *defaultBookBackgroundColor;
/**
 *  作者、页数、创建时间背景色 #f2f2f2
 */
@property (nonatomic, readonly) UIColor *defaultTimeDetailBgColor;
/**
 *  粉红色  #ff678b
 */
@property (nonatomic, readonly) UIColor *defaultPinkRedColor;
/**
 *  粉红色 选中  #eb5e7f
 */
@property (nonatomic, readonly) UIColor *defaultPinkRedHoverColor;
/**
 *  暗红色  #d65870
 */
@property (nonatomic, readonly) UIColor *defaultDarkRedColor;
/**
 *  藏青色 #1e4a79
 */
@property (nonatomic, readonly) UIColor *defaultNavyColor;

/**
 *  默认橙色 #ff8c4d
 */
@property (nonatomic, readonly) UIColor *defaultOrangeColor;
/**
 *  橙色 选中色  #e77e45
 */
@property (nonatomic, readonly) UIColor *defaultOrangeHoverColor;
/**
 *  深橙色  #ff7624
 */
@property (nonatomic, readonly) UIColor *defaultDarkOrangeColor;

/**
 *  默认绿 #6cc667
 */
@property (nonatomic ,readonly) UIColor *defaultGreenColor;
/**
 *  黄色  #ffff00
 */
@property (nonatomic, readonly) UIColor *defaultYellowColor;

/**
 *  纯白色  #ffffff
 */
@property (nonatomic, readonly) UIColor *defaultPureWhite;

/**
 *  默认红 #f01204
 */
@property (nonatomic ,readonly) UIColor *defaultRedColor;
/**
 *  默认白 #f0f0f0
 */
@property (nonatomic ,readonly) UIColor *defaultWhiteColor;
/**
 *  默认占位符颜色  #bdbdbd
 */
@property (nonatomic ,readonly) UIColor *defaultPlaceholderColor;

/**
 *  底部导航背景色 #f5f5f5
 */
@property (nonatomic, readonly) UIColor *defaultTabBarBgColor;

/**
 *  搜索 线颜色  #d7d7d7
 */
@property (nonatomic ,readonly) UIColor *searchLineColor;
/**
 *  搜索框背景色  #ebecee
 */

@property (nonatomic, readonly) UIColor *searchBgColor;

/**
 *  创建时光书封面（新）
 */
@property (nonatomic, readonly) UIColor *coverBackgroundColor;
@property (nonatomic, readonly) UIColor *palletViewBtnColor;
@property (nonatomic, readonly) UIColor *textSummaryBgColor;
@property (nonatomic, readonly) UIColor *textTitleColor;


/**
 *  默认橘色按钮颜色  #f76d02
 */
@property (nonatomic, readonly) UIColor *defaultBtnOrangeBgColor;
/**
 *  默认橘色按钮选中颜色 #e96600
 */
@property (nonatomic, readonly) UIColor *defaultBtnOrangeBgHoverColor;

/**
 *  上传页面
 */
@property (nonatomic, readonly) UIColor *uploadProgressTrackColor;

@property (nonatomic, readonly) UIColor *uploadProgressGrayViewColor;

/**
 *  扫一扫页面
 */
@property (nonatomic, readonly) UIColor *scanBGColor;

/**
 *  登录页面
 */
@property (nonatomic, readonly) UIColor *loginViewColor;

@property (nonatomic, readonly) UIColor *loginTextfieldBorderColor;

@property (nonatomic, strong) UIColor *loginViewBGColor;

@property (nonatomic, strong) UIColor *loginBottomLineColor;

/**
 *  注册页面
 */
@property (nonatomic, readonly) UIColor *verifyEnableTextColor;

@property (nonatomic, readonly) UIColor *verifyEnableBorderColor;

@property (nonatomic, readonly) UIColor *registerButtonEnableColor;

@property (nonatomic, readonly) UIColor *getVerifyButtonEnabledColor;

/**
 *  寄语详情页
 */
@property (nonatomic, readonly) UIColor *wishesTextColor;

@property (nonatomic, readonly) UIColor *wishesVideoTextColor;

@property (nonatomic, readonly) UIColor *videoUploadFailColor;

/**
 *  台历
 */
@property (nonatomic, readonly) UIColor *calenderEditButtonBGColor;

@property (nonatomic, readonly) UIColor *calenderImageEditGuideTextColor;

@property (nonatomic, readonly) UIColor *btnAddBookBackgroundColor;

/**
 *  用户个人中心
 */
@property (nonatomic, readonly) UIColor *userCenterLineColor;

@property (nonatomic, readonly) UIColor *userCenterHeaderTextColor;

@property (nonatomic, strong) UIColor *userCenterNeedleColor;
/**
 *  时光列表页面
 */
@property (nonatomic ,readonly) UIColor *timeEdgeBackgroundColor;

@property (nonatomic, readonly) UIColor *discountCouponColor;

/**
 *  消息列表
 */
@property (nonatomic, readonly) UIColor *numLogoBackgroundColor;
/**
 *  首页参加活动按钮背景色 #fc6262
 */
@property (nonatomic, readonly) UIColor *homeEventButtonBgColor;
/**
 *  发时光选时光书选中时候的边框颜色
 */
@property (nonatomic, readonly) UIColor *postTimeBookBorderColor;
/**
 *  分段头信息背景颜色
 */
@property (nonatomic, readonly) UIColor *sectionBgColor;
/**
 *  分段头信息文字颜色
 */
@property (nonatomic, readonly) UIColor *sectionHeaderTextColor;
/**
 *  发布时光小标题列表线的颜色
 */
@property (nonatomic, readonly) UIColor *postTimeSubTitleLineColor;

@property (nonatomic, readonly) UIColor *timeScannerBackgroundColor;

@property (nonatomic, strong) UIFont *timeContentFont;

@property (nonatomic, strong) UIFont *longTextFont;

@property (nonatomic, strong) UIColor *traceLabelColor;

@property (nonatomic, strong) UIFont *timeTitleFont;

@property (nonatomic, strong) UIColor *zanColor;

@property (nonatomic, strong) UIColor *timeDetailLineColor;

@property (nonatomic, strong) UIColor *timeClientTextColor;

@property (nonatomic, strong) UIColor *defaultHighLightGrayColor;

@property (nonatomic, strong) UIColor *actionCountNumberColor;

@property (nonatomic, strong) UIColor *markBackgroundColor;

@property (nonatomic, strong) UIColor *dialogContentColor;

@property (nonatomic, strong) UIColor *searchPlaceHolderColor;

/**
 *  搜索无结果时的颜色数组
 */
@property (nonatomic, readonly) NSArray *searchNotResultColors;

/**
 *  时光圈首页热门推荐文字黑
 */
@property (nonatomic, readonly) UIColor *recommendLineColor;

/**
 *  时光圈首页加入时光圈普通颜色
 */
@property (nonatomic, strong) UIColor *joinCircleButtonColor;

/**
 *  时光圈首页加入时光圈按钮选中的颜色
 */
@property (nonatomic, strong) UIColor *joinCircleButtonSelectedColor;

/**
 *  用户名称颜色值
 */
@property (nonatomic ,readonly) UIColor *personNameKeyColor;
//////////////////////////////////////时光流影视觉规范-间距////////////////////////////////////////////
@property (nonatomic ,readonly) CGFloat horizontalViewSpace;

@property (nonatomic, readonly) CGFloat verticalViewSpace;

@property (nonatomic, readonly) CGFloat tableViewHeaderViewHeight;

@property (nonatomic, readonly) UIColor* waitCheckColor;


@end
