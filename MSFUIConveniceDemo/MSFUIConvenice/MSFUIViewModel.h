//
//  MSFUIViewModel.h
//  UIButtonTest
//
//  Created by 慕少锋 on 2019/7/15.
//  Copyright © 2019 慕少锋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, MSFUIViewType) {
    MSF_UIView_Type = 1,
    MSF_UILabel_Type = 2,
    MSF_UIImageView_Type = 3,
    MSF_UIButton_Type = 4
};

@interface MSFUIViewModel : NSObject

@property (nonatomic, assign ,readonly) MSFUIViewType    msf_viewType;//

+ (MSFUIViewModel *)msf_defaultViewModelWithViewClassName:(NSString *)className;

- (__kindof UIView *)bindView;

#pragma mark ---- UIView -----

- (MSFUIViewModel * (^)(CGRect frame))frame;

- (MSFUIViewModel * (^)(CGRect bounds))bounds;

- (MSFUIViewModel * (^)(CGPoint origin))origin;

- (MSFUIViewModel * (^)(CGSize size))size;

- (MSFUIViewModel * (^)(CGPoint center))center;

- (MSFUIViewModel * (^)(CGFloat centerX))centerX;

- (MSFUIViewModel * (^)(CGFloat centerY))centerY;

- (MSFUIViewModel * (^)(CGFloat originX))originX;

- (MSFUIViewModel * (^)(CGFloat originY))originY;

- (MSFUIViewModel * (^)(CGFloat width))width;

- (MSFUIViewModel * (^)(CGFloat height))height;

- (MSFUIViewModel * (^)(UIColor *backGroundColor))backGroundColor;

- (MSFUIViewModel * (^)(NSString *backGroundStr))backGroundStr;

- (MSFUIViewModel * (^)(UIColor *tintColor))tintColor;

- (MSFUIViewModel * (^)(NSString *tintColorStr))tintColorStr;

- (MSFUIViewModel * (^)(NSInteger tag))tag;

- (MSFUIViewModel * (^)(BOOL hidden))hidden;

- (MSFUIViewModel * (^)(CGFloat alpha))alpha;

- (MSFUIViewModel * (^)(BOOL userInteractionEnabled))userInteractionEnabled;

- (MSFUIViewModel * (^)(CGFloat cornerRadius))cornerRadius;

- (MSFUIViewModel * (^)(BOOL masksToBounds))masksToBounds;

#pragma mark ---- UILable ----

- (MSFUIViewModel * (^)(NSString * text))text;

- (MSFUIViewModel * (^)(CGFloat fontSize))fontSize;

- (MSFUIViewModel * (^)(UIFont *font))font;

- (MSFUIViewModel * (^)(UIColor *shadowColor))shadowColor;

- (MSFUIViewModel * (^)(UIColor * textColor))textColor;

- (MSFUIViewModel * (^)(NSString * textColorStr))textColorStr;

- (MSFUIViewModel * (^)(NSString *shadowColorStr))shadowColorStr;

- (MSFUIViewModel * (^)(CGSize shadowOffset))shadowOffset;

- (MSFUIViewModel * (^)(NSTextAlignment textAlignment))textAlignment;

- (MSFUIViewModel * (^)(NSLineBreakMode lineBreakMode))lineBreakMode;

- (MSFUIViewModel * (^)(NSAttributedString * attributedText))attributedText;

- (MSFUIViewModel * (^)(NSInteger numberOfLines))numberOfLines;

- (MSFUIViewModel * (^)(BOOL adjustsFontSizeToFitWidth))adjustsFontSizeToFitWidth;

- (MSFUIViewModel * (^)(UIBaselineAdjustment baselineAdjustment))baselineAdjustment;

- (MSFUIViewModel * (^)(CGFloat minimumScaleFactor))minimumScaleFactor;

- (MSFUIViewModel * (^)(CGFloat preferredMaxLayoutWidth))preferredMaxLayoutWidth;

#pragma mark ---- UIImageView ----

- (MSFUIViewModel * (^)(UIImage * image))image;

- (MSFUIViewModel * (^)(UIImage * highlightedImage))highlightedImage;

- (MSFUIViewModel * (^)(BOOL highlighted))highlighted;

- (MSFUIViewModel * (^)(NSArray<UIImage *> *animationImages))animationImages;

- (MSFUIViewModel * (^)(NSArray<UIImage *> *highlightedAnimationImages))highlightedAnimationImages;

- (MSFUIViewModel * (^)(NSTimeInterval animationDuration))animationDuration;

- (MSFUIViewModel * (^)(NSInteger animationRepeatCount))animationRepeatCount;

#pragma mark ---- UIButton ----

- (MSFUIViewModel * (^)(NSString * title,UIControlState state))title;

- (MSFUIViewModel * (^)(UIImage * buttonImage,UIControlState state))buttonImage;

- (MSFUIViewModel * (^)(UIImage * buttonBackGroundImage,UIControlState state))buttonBackGroundImage;

- (MSFUIViewModel * (^)(UIColor * titleColor,UIControlState state))titleColor;

- (MSFUIViewModel * (^)(NSString * titleColorStr,UIControlState state))titleColorStr;

- (MSFUIViewModel * (^)(UIFont * titleFont))titleFont;

- (MSFUIViewModel * (^)(CGFloat titleFontSize))titleFontSize;

- (MSFUIViewModel * (^)(UIEdgeInsets titleEdgeInsets))titleEdgeInsets;

- (MSFUIViewModel * (^)(UIEdgeInsets imageEdgeInsets))imageEdgeInsets;

- (MSFUIViewModel * (^)(BOOL enabled))enabled;

- (MSFUIViewModel * (^)(BOOL selected))selected;

- (MSFUIViewModel * (^)(UIControlContentVerticalAlignment contentVerticalAlignment))contentVerticalAlignment;

- (MSFUIViewModel * (^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))contentHorizontalAlignment;

@end

NS_ASSUME_NONNULL_END
