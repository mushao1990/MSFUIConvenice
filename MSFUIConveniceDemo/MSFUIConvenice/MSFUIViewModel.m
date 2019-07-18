//
//  MSFUIViewModel.m
//  UIButtonTest
//
//  Created by 慕少锋 on 2019/7/15.
//  Copyright © 2019 慕少锋. All rights reserved.
//

#import "MSFUIViewModel.h"


@interface MSFUIViewModel()

@property (nonatomic, strong) id    bindView;//

@end

@implementation MSFUIViewModel

+ (MSFUIViewModel *)msf_defaultViewModelWithViewClassName:(NSString *)className {
    MSFUIViewModel * defaultModel = [MSFUIViewModel new];
    defaultModel.bindView = [NSClassFromString(className) new];
    defaultModel->_msf_viewType = [MSFUIViewModel judgeTheViewTypeByViewClassName:className];
    return defaultModel;
}

- (__kindof UIView *)bindView {
    return (UIView *)_bindView;
}

#pragma mark ---- UIView -----

- (MSFUIViewModel * (^)(UIColor *backGroundColor))backGroundColor {
    return ^id(UIColor *backGroundColor){
        self.bindView.backgroundColor = backGroundColor;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSString *backGroundStr))backGroundStr {
    return ^id(NSString *backGroundStr){
        self.bindView.backgroundColor = [self hexColorWithString:backGroundStr];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIColor *tintColor))tintColor {
    return ^id(UIColor *tintColor){
        self.bindView.tintColor = tintColor;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSString *tintColorStr))tintColorStr {
    return ^id(NSString *tintColorStr){
        self.bindView.tintColor = [self hexColorWithString:tintColorStr];
        return self;
    };
}

- (MSFUIViewModel * (^)(NSInteger tag))tag {
    return ^id(NSInteger tag){
        self.bindView.tag = tag;
        return self;
    };
}

- (MSFUIViewModel * (^)(BOOL hidden))hidden {
    return ^id(BOOL hidden){
        self.bindView.hidden = hidden;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat alpha))alpha {
    return ^id(CGFloat alpha){
        self.bindView.alpha = alpha;
        return self;
    };
}

- (MSFUIViewModel * (^)(BOOL userInteractionEnabled))userInteractionEnabled {
    return ^id(BOOL userInteractionEnabled){
        self.bindView.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGSize size))size {
    return ^id(CGSize size){
        CGRect beforframe = self.bindView.frame;
        beforframe.size = size;
        self.bindView.frame = beforframe;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGRect frame))frame {
    return ^id(CGRect frame){
        self.bindView.frame = frame;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGRect bounds))bounds {
    return ^id(CGRect bounds){
        self.bindView.bounds = bounds;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGPoint origin))origin {
    return ^id(CGPoint origin){
        CGRect beforframe = self.bindView.frame;
        beforframe.origin = origin;
        self.bindView.frame = beforframe;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGPoint center))center {
    return ^id(CGPoint center){
        self.bindView.center = center;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat centerX))centerX {
    return ^id(CGFloat centerX){
        CGPoint beforeCenter = self.bindView.center;
        beforeCenter.x = centerX;
        self.bindView.center = beforeCenter;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat centerY))centerY {
    return ^id(CGFloat centerY){
        CGPoint beforeCenter = self.bindView.center;
        beforeCenter.y = centerY;
        self.bindView.center = beforeCenter;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat originX))originX {
    return ^id(CGFloat originX){
        CGRect beforframe = self.bindView.frame;
        beforframe.origin.x = originX;
        self.bindView.frame = beforframe;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat originY))originY {
    return ^id(CGFloat originY){
        CGRect beforframe = self.bindView.frame;
        beforframe.origin.y = originY;
        self.bindView.frame = beforframe;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat width))width {
    return ^id(CGFloat width){
        CGRect beforframe = self.bindView.frame;
        beforframe.size.width = width;
        self.bindView.frame = beforframe;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat height))height {
    return ^id(CGFloat height){
        CGRect beforframe = self.bindView.frame;
        beforframe.size.height = height;
        self.bindView.frame = beforframe;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat cornerRadius))cornerRadius {
    return ^id(CGFloat cornerRadius){
        self.bindView.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (MSFUIViewModel * (^)(BOOL masksToBounds))masksToBounds {
    return ^id(BOOL masksToBounds){
        self.bindView.layer.masksToBounds = masksToBounds;
        return self;
    };
}

#pragma mark ----- UILabel -----

- (MSFUIViewModel * (^)(NSString * text))text {
    return ^id(NSString * text){
        self.bindLabel.text = text;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat fontSize))fontSize {
    return ^id(CGFloat fontSize){
        self.bindLabel.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIFont *font))font {
    return ^id(UIFont *font){
        self.bindLabel.font = font;
        return self;
    };
}

- (MSFUIViewModel * (^)(UIColor *shadowColor))shadowColor {
    return ^id(UIColor *shadowColor){
        self.bindLabel.shadowColor = shadowColor;
        return self;
    };
}

- (MSFUIViewModel * (^)(UIColor * textColor))textColor {
    return ^id(UIColor *textColor){
        self.bindLabel.textColor = textColor;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSString * textColorStr))textColorStr {
    return ^id(NSString *textColorStr){
        self.bindLabel.textColor = [self hexColorWithString:textColorStr];
        return self;
    };
}

- (MSFUIViewModel * (^)(NSString *shadowColorStr))shadowColorStr {
    return ^id(NSString *shadowColorStr){
        self.bindLabel.shadowColor = [self hexColorWithString:shadowColorStr];
        return self;
    };
}

- (MSFUIViewModel * (^)(CGSize shadowOffset))shadowOffset {
    return ^id(CGSize shadowOffset){
        self.bindLabel.shadowOffset = shadowOffset;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSTextAlignment textAlignment))textAlignment {
    return ^id(NSTextAlignment textAlignment){
        self.bindLabel.textAlignment = textAlignment;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSLineBreakMode lineBreakMode))lineBreakMode {
    return ^id(NSLineBreakMode lineBreakMode){
        self.bindLabel.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSAttributedString * attributedText))attributedText {
    return ^id(NSAttributedString * attributedText){
        self.bindLabel.attributedText = attributedText;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSInteger numberOfLines))numberOfLines {
    return ^id(NSInteger numberOfLines){
        self.bindLabel.numberOfLines = numberOfLines;
        return self;
    };
}

- (MSFUIViewModel * (^)(BOOL adjustsFontSizeToFitWidth))adjustsFontSizeToFitWidth {
    return ^id(BOOL adjustsFontSizeToFitWidth){
        self.bindLabel.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (MSFUIViewModel * (^)(UIBaselineAdjustment baselineAdjustment))baselineAdjustment {
    return ^id(UIBaselineAdjustment baselineAdjustment){
        self.bindLabel.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat minimumScaleFactor))minimumScaleFactor {
    return ^id(CGFloat minimumScaleFactor){
        self.bindLabel.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat preferredMaxLayoutWidth))preferredMaxLayoutWidth {
    return ^id(CGFloat preferredMaxLayoutWidth){
        self.bindLabel.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

#pragma mark ---- UIImageView ----

- (MSFUIViewModel * (^)(UIImage * image))image {
    return ^id(UIImage * image){
        self.bindImageView.image = image;
        return self;
    };
}

- (MSFUIViewModel * (^)(UIImage * highlightedImage))highlightedImage {
    return ^id(UIImage * highlightedImage){
        self.bindImageView.highlightedImage = highlightedImage;
        return self;
    };
}

- (MSFUIViewModel * (^)(BOOL highlighted))highlighted {
    return ^id(BOOL highlighted){
        if (self.msf_viewType == MSF_UIImageView_Type) {
            self.bindImageView.highlighted = highlighted;
        }
        else if (self.msf_viewType == MSF_UIButton_Type) {
            self.bindButton.highlighted = highlighted;
        }
        return self;
    };
}

- (MSFUIViewModel * (^)(NSArray<UIImage *> *animationImages))animationImages {
    return ^id(NSArray<UIImage *> *animationImages){
        self.bindImageView.animationImages = animationImages;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSArray<UIImage *> *highlightedAnimationImages))highlightedAnimationImages {
    return ^id(NSArray<UIImage *> *highlightedAnimationImages){
        self.bindImageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSTimeInterval animationDuration))animationDuration {
    return ^id(NSTimeInterval animationDuration){
        self.bindImageView.animationDuration = animationDuration;
        return self;
    };
}

- (MSFUIViewModel * (^)(NSInteger animationRepeatCount))animationRepeatCount {
    return ^id(NSInteger animationRepeatCount){
        self.bindImageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

#pragma mark ---- UIButton ----

- (MSFUIViewModel * (^)(NSString * title,UIControlState state))title {
    return ^id(NSString * title,UIControlState state){
        [self.bindButton setTitle:title forState:state];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIImage * buttonImage,UIControlState state))buttonImage {
    return ^id(UIImage * buttonImage,UIControlState state){
        [self.bindButton setImage:buttonImage forState:state];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIImage * buttonBackGroundImage,UIControlState state))buttonBackGroundImage {
    return ^id(UIImage * buttonBackGroundImage,UIControlState state){
        [self.bindButton setBackgroundImage:buttonBackGroundImage forState:state];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIColor * titleColor,UIControlState state))titleColor {
    return ^id(UIColor * titleColor,UIControlState state){
        [self.bindButton setTitleColor:titleColor forState:state];
        return self;
    };
}

- (MSFUIViewModel * (^)(NSString * titleColorStr,UIControlState state))titleColorStr {
    return ^id(NSString * titleColorStr,UIControlState state){
        [self.bindButton setTitleColor:[self hexColorWithString:titleColorStr] forState:state];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIFont * titleFont))titleFont {
    return ^id(UIFont * titleFont){
        self.bindButton.titleLabel.font = titleFont;
        return self;
    };
}

- (MSFUIViewModel * (^)(CGFloat titleFontSize))titleFontSize {
    return ^id(CGFloat titleFontSize){
        self.bindButton.titleLabel.font = [UIFont systemFontOfSize:titleFontSize];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIEdgeInsets titleEdgeInsets))titleEdgeInsets {
    return ^id(UIEdgeInsets titleEdgeInsets){
        [self.bindButton setTitleEdgeInsets:titleEdgeInsets];
        return self;
    };
}

- (MSFUIViewModel * (^)(UIEdgeInsets imageEdgeInsets))imageEdgeInsets {
    return ^id(UIEdgeInsets imageEdgeInsets){
        [self.bindButton setImageEdgeInsets:imageEdgeInsets];
        return self;
    };
}

- (MSFUIViewModel * (^)(BOOL enabled))enabled {
    return ^id(BOOL enabled){
        self.bindButton.enabled = enabled;
        return self;
    };
}

- (MSFUIViewModel * (^)(BOOL selected))selected {
    return ^id(BOOL selected){
        self.bindButton.selected = selected;
        return self;
    };
}

- (MSFUIViewModel * (^)(UIControlContentVerticalAlignment contentVerticalAlignment))contentVerticalAlignment {
    return ^id(UIControlContentVerticalAlignment contentVerticalAlignment){
        self.bindButton.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (MSFUIViewModel * (^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))contentHorizontalAlignment {
    return ^id(UIControlContentHorizontalAlignment contentHorizontalAlignment){
        self.bindButton.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}

#pragma mark ----- private -----

- (UILabel *)bindLabel {
    if (self.msf_viewType == MSF_UILabel_Type) {
        return (UILabel *)_bindView;
    }
    return nil;
}

- (UIImageView *)bindImageView {
    if (self.msf_viewType == MSF_UIImageView_Type) {
        return (UIImageView *)_bindView;
    }
    return nil;
}

- (UIButton *)bindButton {
    if (self.msf_viewType == MSF_UIButton_Type) {
        return (UIButton *)_bindView;
    }
    return nil;
}

+ (MSFUIViewType)judgeTheViewTypeByViewClassName:(NSString *)className {
    NSDictionary * mapDic = @{@"UIView":@1,@"UILabel":@2,@"UIImageView":@3,@"UIButton":@4};
    return [mapDic[className] integerValue];
}

- (UIColor *)hexColorWithString:(NSString *)colorStr {
    if (colorStr.length != 7) {
        return self.bindView.tintColor;
    }
    NSRange range = NSMakeRange(1, 2);
    NSString * rStr = [colorStr substringWithRange:range];
    range = NSMakeRange(3, 2);
    NSString * gStr = [colorStr substringWithRange:range];
    range = NSMakeRange(5, 2);
    NSString * bStr = [colorStr substringWithRange:range];
    unsigned int r,g,b;
    [[NSScanner scannerWithString:rStr] scanHexInt:&r];
    [[NSScanner scannerWithString:gStr] scanHexInt:&g];
    [[NSScanner scannerWithString:bStr] scanHexInt:&b];
    
    return [UIColor colorWithRed:r/225.0 green:g/255.0 blue:b/255.0 alpha:1];
}

@end
