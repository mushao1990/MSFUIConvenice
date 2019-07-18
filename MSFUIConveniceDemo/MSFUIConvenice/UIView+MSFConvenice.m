//
//  UIView+MSFConvenice.m
//  UIButtonTest
//
//  Created by 慕少锋 on 2019/7/15.
//  Copyright © 2019 慕少锋. All rights reserved.
//

#import "UIView+MSFConvenice.h"

@implementation UIView (MSFConvenice)

+ (MSFUIViewModel *)msf_viewModel {
    NSString * className = NSStringFromClass(self);
    return [MSFUIViewModel msf_defaultViewModelWithViewClassName:className];
}

+ (__kindof UIView *)msf_makeViewWithViewModel:(void(^)(MSFUIViewModel * viewModel))block {
    NSString * className = NSStringFromClass(self);
    MSFUIViewModel * viewModel = [MSFUIViewModel msf_defaultViewModelWithViewClassName:className];
    if (block) {
        block(viewModel);
    }
    return viewModel.bindView;
}

+ (__kindof UIView *(^)(__kindof UIView * view))msf_copyView {
    return [self msf_copyViewUpdateInfoWithModel:nil];
}

+ (__kindof UIView *(^)(__kindof UIView * view))msf_copyViewUpdateInfoWithModel:(nullable void(^)(MSFUIViewModel * viewModel))block {
    
    return ^id(__kindof UIView * view) {
        Class class = view.class;
        return [class msf_makeViewWithViewModel:^(MSFUIViewModel *viewModel) {
            [self p_copyBaseAttributeFromView:view withViewModel:viewModel];
            if (viewModel.msf_viewType == MSF_UILabel_Type) {
                UILabel * label = (UILabel *)view;
                viewModel.text(label.text).textColor(label.textColor).textAlignment(label.textAlignment).numberOfLines(label.numberOfLines)
                .lineBreakMode(label.lineBreakMode).font(label.font).shadowColor(label.shadowColor).shadowOffset(label.shadowOffset)
                .attributedText(label.attributedText).adjustsFontSizeToFitWidth(label.adjustsFontSizeToFitWidth).baselineAdjustment(label.baselineAdjustment)
                .minimumScaleFactor(label.minimumScaleFactor).preferredMaxLayoutWidth(label.preferredMaxLayoutWidth);
            }
            else if (viewModel.msf_viewType == MSF_UIButton_Type) {
                UIButton * button = (UIButton *)view;
                viewModel.title(button.titleLabel.text,button.state).buttonImage(button.imageView.image,button.state)
                .buttonBackGroundImage(button.currentBackgroundImage,button.state).titleColor(button.titleLabel.textColor,button.state)
                .titleFont(button.titleLabel.font).titleEdgeInsets(button.titleEdgeInsets).imageEdgeInsets(button.imageEdgeInsets)
                .enabled(button.enabled).selected(button.selected).contentVerticalAlignment(button.contentVerticalAlignment).contentHorizontalAlignment(button.contentHorizontalAlignment);
            }
            else if (viewModel.msf_viewType == MSF_UIImageView_Type) {
                UIImageView * imageView = (UIImageView *)view;
                viewModel.image(imageView.image).highlightedImage(imageView.highlightedImage).highlighted(imageView.highlighted).animationImages(imageView.animationImages)
                .highlightedAnimationImages(imageView.highlightedAnimationImages).animationDuration(imageView.animationDuration).animationRepeatCount(imageView.animationRepeatCount);
            }
            
            if (block) {
                block(viewModel);
            }
        }];
    };
}

+ (void)p_copyBaseAttributeFromView:(UIView *)view withViewModel:(MSFUIViewModel *)viewModel  {
    viewModel.frame(view.frame).backGroundColor(view.backgroundColor).cornerRadius(view.layer.cornerRadius).alpha(view.alpha)
    .hidden(view.hidden).tag(view.tag).userInteractionEnabled(view.userInteractionEnabled).masksToBounds(view.layer.masksToBounds);
}

@end
