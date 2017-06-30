//
//  ViewController.m
//  AutoAlignButton
//
//  Created by StevenXie on 2017/4/26.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "ViewController.h"

#import "AutoAlignButtonView.h"

@interface ViewController ()<AutoAlignButtonViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AutoAlignButtonView *view = [AutoAlignButtonView new];
    view.dataTitleArray = @[@"活动中心", @"邀请好友", @"会员中心"];
    view.dataImagesArray = @[@"cat", @"dog", @"cat"];
    view.frame = CGRectMake(0, 100, self.view.bounds.size.width, 0);
    view.isScratchableLatex = YES;
    view.countHorizonal = 3;
    view.delegate = self;
    [self.view addSubview:view];
}

- (void)btnDelegateAction:(UIButton *)button {
    NSString *msg = [NSString stringWithFormat:@"你点击了<%@>",button.titleLabel.text];
    NSLog(@"----%@",msg);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
