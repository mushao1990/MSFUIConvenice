//
//  ViewController.m
//  MSFUIConveniceDemo
//
//  Created by 慕少锋 on 2019/7/16.
//  Copyright © 2019 慕少锋. All rights reserved.
//

#import "ViewController.h"
#import "UIView+MSFConvenice.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    UIView * view1 = UIView.msf_viewModel.frame(CGRectMake(100, 50, 50, 100)).backGroundColor([UIColor redColor]).bindView;
    UILabel * label2 = [UILabel msf_makeViewWithViewModel:^(MSFUIViewModel * _Nonnull viewModel) {
        viewModel.frame(CGRectMake(100, 200, 300, 100)).text(@"mushaofeng").textColorStr(@"#333333").textAlignment(NSTextAlignmentCenter);
    }];
    
    UILabel * label3 = UIView.msf_copyView(label2);
    UILabel * label4 = [UIView msf_copyViewUpdateInfoWithModel:^(MSFUIViewModel * _Nonnull viewModel) {
        viewModel.originY(400);
    }](label3);
    
    [self.view addSubview:view1];
    [self.view addSubview:label2];
    [self.view addSubview:label3];
    [self.view addSubview:label4];

}


@end
