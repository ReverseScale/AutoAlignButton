//
//  LabelTagsViewController.m
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "LabelTagsViewController.h"
#import "RSLabelTagsView.h"
#import "TagsModel.h"

#define mDeviceWidth [UIScreen mainScreen].bounds.size.width        //屏幕宽
#define mDeviceHeight [UIScreen mainScreen].bounds.size.height      //屏幕高

@interface LabelTagsViewController ()
@property (nonatomic,strong)NSMutableArray *dataArr;

@end

@implementation LabelTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setUp];
}

- (NSMutableArray *)dataArr{
    if (!_dataArr){
        NSString *path =[[NSBundle mainBundle ]pathForResource:@"tagsData.plist" ofType:nil];
        NSArray *dataArr =[NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempArr =[NSMutableArray array];
        for (NSDictionary *dict in dataArr){
            TagsModel *model =[[TagsModel alloc]initWithTagsDict:dict];
            [tempArr addObject:model];
        }
        _dataArr =[tempArr copy];
    }
    return _dataArr;
}

- (void)setUp{
    RSLabelTagsView *sdTagsView =[RSLabelTagsView rsLabTagsViewWithTagsArr:self.dataArr];
    sdTagsView.frame =CGRectMake(0,0,mDeviceWidth,300);
    [self.view addSubview:sdTagsView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
