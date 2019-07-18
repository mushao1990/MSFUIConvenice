//
//  UIView+MSFConvenice.h
//  UIButtonTest
//
//  Created by 慕少锋 on 2019/7/15.
//  Copyright © 2019 慕少锋. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MSFUIViewModel.h"

/*
 
 使用方式：
 
 创建view或者其子类的方式有两种： 需要注意的是，要生成view的子类对象，就需要用子类去调用。
 
 方式一： UIView * view1 = UIView.msf_viewModel.frame(CGRectMake(100, 50, 50, 100)).backGroundColor([UIColor redColor]).bindView;
 
 方式二： UILabel * label2 = [UILabel msf_makeViewWithViewModel:^(MSFUIViewModel * _Nonnull viewModel) {
 viewModel.frame(CGRectMake(100, 200, 300, 100)).text(@"mushaofeng").textColorStr(@"#333333").textAlignment(NSTextAlignmentCenter);
 }];
 
 对一个view或者其子类进行深拷贝：
 
 UILabel * label3 = UIView.msf_copyView(label2);
 
 如果拷贝后，想重新更改一下属性值，可使用：
 
 UILabel * label4 = [UIView msf_copyViewUpdateInfoWithModel:^(MSFUIViewModel * _Nonnull viewModel) {
 viewModel.originY(400);
 }](label3);
 
 */

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MSFConvenice)

#if UIKIT_DEFINE_AS_PROPERTIES

@property(class, nonatomic, readonly) MSFUIViewModel * msf_viewModel;

#else

+ (MSFUIViewModel *)msf_viewModel;

#endif

/**
 生成一个view（或者其子类Label，ImageView，Button），类似Masonry的用法
 viewModel可使用链式语法给view进行赋值
 */

+ (__kindof UIView *)msf_makeViewWithViewModel:(void(^)(MSFUIViewModel * viewModel))block;

#pragma mark ----- copy ----

/**
 拷贝方法， 可以根据提供的view，进行一次深拷贝
 */

+ (__kindof UIView *(^)(__kindof UIView * view))msf_copyView;

/**
 拷贝方法， 可以根据提供的view，进行一次深拷贝
 拷贝后，可以自己再重新赋值一些属性
 */

+ (__kindof UIView *(^)(__kindof UIView * view))msf_copyViewUpdateInfoWithModel:(nullable void(^)(MSFUIViewModel * viewModel))block;

@end

NS_ASSUME_NONNULL_END

