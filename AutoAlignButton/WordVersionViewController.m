//
//  WordVersionViewController.m
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/7/13.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "WordVersionViewController.h"

#import "AutoAlignTextButtonView.h"

@interface WordVersionViewController ()<AutoAlignTextButtonViewDelegate>

@end

@implementation WordVersionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupTextButton];
}
- (void)setupTextButton {
    AutoAlignTextButtonView *view = [AutoAlignTextButtonView new];
    view.dataArray = @[@"投资", @"回款回款", @"提现", @"奖励", @"充值",@"转让",@"活动", @"提现", @"奖励", @"充值",@"转让",@"活动"];
    view.frame = CGRectMake(10, 100, self.view.bounds.size.width - 20, 0);
    view.buttonVerticalPadding = 3.5;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
