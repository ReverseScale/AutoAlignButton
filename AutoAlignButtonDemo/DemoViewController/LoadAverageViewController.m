//
//  LoadAverageViewController.m
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/7/13.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "LoadAverageViewController.h"
#import "AutoAlignButtonView.h"

@interface LoadAverageViewController ()<AutoAlignButtonViewDelegate>

@end

@implementation LoadAverageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AutoAlignButtonView *view = [AutoAlignButtonView new];
    view.dataTitleArray = @[@"Java", @"Swift", @"HTML"];
    view.dataImagesArray = @[@"cat", @"dog", @"cat"];
    view.frame = CGRectMake(0, 100, self.view.bounds.size.width, 0);
    view.isScratchableLatex = YES;
    view.countHorizonal = 3;
    view.delegate = self;
    [self.view addSubview:view];
}

- (void)btnDelegateAction:(UIButton *)button {
    NSLog(@"%@", [NSString stringWithFormat:@"你点击了<%@>",button.titleLabel.text]);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
