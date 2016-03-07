//
//  TFSpecsStyle.m
//  TimeFaceV3
//
//  Created by zguanyu on 10/21/15.
//  Copyright © 2015 timeface. All rights reserved.
//

#import "TFSpecsStyle.h"

@implementation TFSpecsStyle


#pragma mark - ovrride
- (UIColor*)navBarBackgroundColor {
    return [self getColorByHex:@"069bf2"];
}

#pragma mark - setValue

- (UIColor *)defaultBlackColor {
    return [self getColorByHex:@"333333"];
}

- (UIColor*)defaultPureBlackColor {
    return [self getColorByHex:@"000000"];
}

- (UIColor*)defaultLightBlackColor {
    return [self getColorByHex:@"666666"];
}

- (UIColor *)defaultBlueColor {
    return [self getColorByHex:@"069bf2"];
}

- (UIColor*)defaultBlueHoverColor {
    return [self getColorByHex:@"058ccd"];
}

- (UIColor *)defaultGrayColor {
    return [self getColorByHex:@"999999"];
}
- (UIColor *)defaultBackgroundGrayColor {
    return [self getColorByHex:@"ededed"];
}
- (UIColor*)defaultLightGrayColor {
    return [self getColorByHex:@"cccccc"];
}

- (UIColor*)defaultSignatureGrayColor {
    return [self getColorByHex:@"d1d1d1"];
}

- (UIColor*)defaultBackgroudColor {
    return [self getColorByHex:@"f2f3f4"];
}

- (UIColor*)defaultBookBackgroundColor {
    return [self getColorByHex:@"eeeeee"];
}

- (UIColor *)defaultSplitLineColor {
    return [self getColorByHex:@"e1e1e1"];
}

- (UIColor*)defaultTimeDetailBgColor {
    return [self getColorByHex:@"f2f2f2"];
}

- (UIColor *)defaultGreenColor {
    return [self getColorByHex:@"6cc667"];
}

- (UIColor*)defaultPinkRedColor {
    return [self getColorByHex:@"ff678b"];
}

- (UIColor*)defaultPinkRedHoverColor {
    return [self getColorByHex:@"eb5e7f"];
}

- (UIColor*)defaultDarkRedColor {
    return [self getColorByHex:@"d65870"];
}

- (UIColor*)defaultNavyColor {
    return [self getColorByHex:@"1e4a79"];
}

- (UIColor *)defaultOrangeColor {
    return [self getColorByHex:@"ff8c4d"];
}

- (UIColor*)defaultOrangeHoverColor {
    return [self getColorByHex:@"e77e45"];
}

- (UIColor*)defaultDarkOrangeColor {
    return [self getColorByHex:@"ff7624"];
}

- (UIColor*)defaultYellowColor {
    return [self getColorByHex:@"ffff00"];
}

- (UIColor*)defaultBtnOrangeBgColor {
    return [self getColorByHex:@"f76d02"];
}

- (UIColor*)defaultBtnOrangeBgHoverColor {
    return [self getColorByHex:@"e96600"];
}

- (UIColor*)defaultPureWhite {
    return [self getColorByHex:@"ffffff"];
}

- (UIColor *)defaultRedColor {
    return [self getColorByHex:@"f01204"];
}
- (UIColor *)defaultWhiteColor {
    return [self getColorByHex:@"f0f0f0"];
}
- (UIColor *)defaultPlaceholderColor {
    return [self getColorByHex:@"bdbdbd"];
}

- (UIColor *)defaultTabBarBgColor {
    return [self getColorByHex:@"F5F5F5"];
}

- (UIColor *)searchLineColor {
    return [self getColorByHex:@"d7d7d7"];
}

- (UIColor *)searchBgColor {
    return [self getColorByHex:@"EBECEE"];
}
/**
 *  创建时光书封面（新）
 */
- (UIColor*)coverBackgroundColor {
    return [self getColorByHex:@"39384b"];
}

- (UIColor *)palletViewBtnColor{
    return [self getColorByHex:@"#ff0000"];
}

- (UIColor *)textSummaryBgColor {
    return [self getColorByHex:@"4d5069"];
}
- (UIColor *)textTitleColor {
    return [self getColorByHex:@"1eaef3"];
}

/**
 *  优惠券
 */
- (UIColor *)discountCouponColor {
    return [self getColorByHex:@"#C6C6C6" alpha:.6];
}
/**
 *  上传页面
 */
- (UIColor *)uploadProgressTrackColor {
    return [self getColorByHex:@"#000000" alpha:.5];
}

/**
 *  上传过程中灰色遮罩
 */
- (UIColor *)uploadProgressGrayViewColor {
    return [self getColorByHex:@"#000000" alpha:.6];
}

/**
 *  扫一扫页面
 */
- (UIColor *)scanBGColor {
    return [self getColorByHex:@"#000000" alpha:.8];
}

/**
 *  登录页面
 */
- (UIColor *)loginViewColor {
    return [self getColorByHex:@"#000000" alpha:.7];
}

- (UIColor *)loginTextfieldBorderColor {
    return [self getColorByHex:@"ffffff"];
}

- (UIColor *)loginViewBGColor {
    return [self getColorByHex:@"000000" alpha:.3];
}

- (UIColor *)loginBottomLineColor {
    return [self getColorByHex:@"ffffff" alpha:.05];
}

/**
 *  注册页面
 */
- (UIColor *)verifyEnableTextColor {
    return [self getColorByHex:@"999999"];
}

- (UIColor *)verifyEnableBorderColor {
    return [self getColorByHex:@"c8c8c8"];
}

- (UIColor *)registerButtonEnableColor {
    return [self getColorByHex:@"000000" alpha:.2];
}

- (UIColor *)getVerifyButtonEnabledColor {
    return [self getColorByHex:@"069bf2" alpha:.5];
}

/**
 *  用户个人中心
 */
- (UIColor *)userCenterLineColor {
    return [self getColorByHex:@"#E0E0E0"];
}

- (UIColor *)userCenterHeaderTextColor {
    return [self getColorByHex:@"#ffffff" alpha:.5];
}

-  (UIColor *)userCenterNeedleColor {
    return [self getColorByHex:@"f46d00"];
}
/**
 *  时光列表页面
 */
-(UIColor *)timeEdgeBackgroundColor {
    return [self getColorByHex:@"025f8b"];
}
/**
 *  寄语详情页
 */
- (UIColor *)wishesTextColor {
    return [self getColorByHex:@"#945700"];
}

- (UIColor *)wishesVideoTextColor {
    return [self getColorByHex:@"666666"];
}

- (UIColor *)videoUploadFailColor {
    return [self getColorByHex:@"ffffff" alpha:.8];
}

/**
 *  台历
 */
- (UIColor *)calenderEditButtonBGColor {
    return [self getColorByHex:@"#000000" alpha:.8];
}

- (UIColor *)calenderImageEditGuideTextColor {
    return [self getColorByHex:@"#079AF1"];
}

/**
 *  印刷车
 */
- (UIColor*)btnAddBookBackgroundColor {
    return [self getColorByHex:@"ffffff"];
}

/**
 *  消息列表
 */
- (UIColor*)numLogoBackgroundColor {
    return [self getColorByHex:@"ff382d"];
}

- (UIFont *)timeContentFont {
    return [UIFont boldSystemFontOfSize:15];
}

/**
 *  长文本页面文本字体
 */
- (UIFont *)longTextFont {
    if (iPhone6Plus) {
        return [UIFont systemFontOfSize:18];
    }
    return [UIFont systemFontOfSize:14];
}

/**
 *  追溯字体颜色
 */
-(UIColor*)traceLabelColor {
    return [self getColorByHex:@"7bae69"];
}

- (UIFont *)timeTitleFont {
    if (iPhone6Plus) {
        return [UIFont boldSystemFontOfSize:18];
    }
    return [UIFont boldSystemFontOfSize:15];
}

-(UIColor *)zanColor{
    return  [self getColorByHex:@"#ff678b"];
}

-(UIColor*)timeDetailLineColor {
    return [self getColorByHex:@"e0e0e0"];
}

- (UIColor *)timeClientTextColor {
    return [self getColorByHex:@"999999"];
}

- (UIColor*)defaultHighLightGrayColor {
    return RGBCOLOR(104, 104, 104);
}

- (UIColor *)actionCountNumberColor {
    return RGBCOLOR(205, 0, 0);
}

- (UIColor*)homeEventButtonBgColor {
    return [self getColorByHex:@"fc6262"];
}
- (UIColor *)markBackgroundColor {
    return [self getColorByHex:@"#0067AF"];
}

- (UIColor*)postTimeBookBorderColor {
    return [self getColorByHex:@"dc6263"];
}

- (UIColor*)sectionBgColor {
    return [self getColorByHex:@"f8f8f8"];
}

- (UIColor*)sectionHeaderTextColor {
    return [self getColorByHex:@"a8a8a8"];
}

- (UIColor*)postTimeSubTitleLineColor {
    return [self getColorByHex:@"c6c6c6"];
}

- (UIColor*)waitCheckColor {
    return [self getColorByHex:@"b19c7b"];
}

- (UIColor*)timeScannerBackgroundColor {
    return [self getColorByHex:@"303233"];
}

- (UIColor*)dialogContentColor {
    return RGBCOLOR(51, 51, 51);
}

- (UIColor*)searchPlaceHolderColor {
    return [self getColorByHex:@"8a8a8a"];
}

- (NSArray*)searchNotResultColors {
    NSArray *array = @[[self getColorByHex:@"41b7f0"],
                       [self getColorByHex:@"a282f3"],
                       [self getColorByHex:@"41ceb2"],
                       [self getColorByHex:@"82c4f3"],
                       [self getColorByHex:@"f4ac30"]];
    return array;
}

/**
 *  时光圈首页热门推荐文字黑
 */
- (UIColor *)recommendLineColor {
    return [self getColorByHex:@"9b9b9b"];
}

/**
 *  时光圈首页加入时光圈普通颜色
 */
- (UIColor *)joinCircleButtonColor {
    return [self getColorByHex:@"ff608a"];
}

/**
 *  时光圈首页加入时光圈按钮选中的颜色
 */
- (UIColor *)joinCircleButtonSelectedColor {
    return [self getColorByHex:@"ff7090"];
}

/**
 *  用户名称颜色值
 */
-(UIColor *)personNameKeyColor {
    return [self getColorByHex:@"c10008"];
}

//////////////////////////////////////字体////////////////////////////////////////////
- (UIFont *)font20 {
    return [UIFont systemFontOfSize:20];
}

- (UIFont *)font22 {
    return [UIFont systemFontOfSize:22];
}

- (UIFont *)font22B {
    return [UIFont boldSystemFontOfSize:22];
}

- (UIFont *)font24 {
    return [UIFont systemFontOfSize:24];
}

- (UIFont *)font24B {
    return [UIFont boldSystemFontOfSize:24];
}

//////////////////////////////////////时光流影视觉规范-间距////////////////////////////////////////////

- (CGFloat)horizontalViewSpace {
    return 12;
}

- (CGFloat)verticalViewSpace {
    return 10;
}

- (CGFloat)tableViewHeaderViewHeight {
    return 10;
}



@end
