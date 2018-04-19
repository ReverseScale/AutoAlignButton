//
//  EditTagsViewController.m
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "EditTagsViewController.h"
#import "RSEditCollectionTagsView.h"
#import "RSCollectionTagsView.h"
#import "TagsModel.h"

#define mDeviceWidth [UIScreen mainScreen].bounds.size.width        //屏幕宽
#define mDeviceHeight [UIScreen mainScreen].bounds.size.height      //屏幕高

@interface EditTagsViewController ()<RSCollectionTagsViewDelegate>

/**
 我的标签数据
 */
@property (nonatomic,strong)NSMutableArray *myTagsArr;

/**
 更多标签数据
 */
@property (nonatomic,strong)NSMutableArray *moreTagsArr;

/**
 所有标签数据
 */
@property (nonatomic,strong)NSMutableArray *dataArr;

/**
 SDCollectionTagsView
 */
@property (nonatomic,strong)RSEditCollectionTagsView *tagsView;
@end

@implementation EditTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor =[UIColor whiteColor];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.tagsView];
    
    [self.dataArr addObject:self.myTagsArr];
    [self.dataArr addObject:self.moreTagsArr];
    self.tagsView.dataArr =[NSMutableArray arrayWithArray:self.dataArr];
    [self.tagsView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSMutableArray *)myTagsArr {
    if (!_myTagsArr) {
        _myTagsArr =[NSMutableArray array];
        
    }
    return _myTagsArr;
}

- (NSMutableArray *)moreTagsArr {
    if (!_moreTagsArr){
        
        NSString *path =[[NSBundle mainBundle]pathForResource:@"tagsData" ofType:@"plist"];
        NSArray *arr =[NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *emptyArr =[NSMutableArray array];
        for (NSDictionary *dic in arr) {
            TagsModel *tagsModel =[TagsModel tagsModelWithDict:dic];
            [emptyArr addObject:tagsModel];
        }
        _moreTagsArr =[NSMutableArray arrayWithArray:emptyArr];
        
    }
    return _moreTagsArr;
}

- (NSMutableArray *)dataArr {
    if (!_dataArr){
        _dataArr =[NSMutableArray array];
        
    }
    return _dataArr;
}

- (RSEditCollectionTagsView *)tagsView {
    if (!_tagsView){
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.minimumLineSpacing = 5;
        flowLayout.minimumInteritemSpacing = 5;
        
        _tagsView =[[RSEditCollectionTagsView alloc]initWithFrame:CGRectMake(15, 10, mDeviceWidth-30, mDeviceHeight) collectionViewLayout:flowLayout];
        
        _tagsView.sd_delegate =self;
    }
    return _tagsView;
}

#pragma mark - SDCollectionTagsViewDelegate
- (void)RSCollectionTagsView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    TagsModel *tagsModel;
    if (indexPath.section ==0) {
        tagsModel = self.myTagsArr[indexPath.row];
        [self.myTagsArr removeObjectAtIndex:indexPath.row];
        [self.moreTagsArr insertObject:tagsModel atIndex:0];
        
        [self.tagsView moveItemAtIndexPath:indexPath toIndexPath:[NSIndexPath indexPathForItem:0 inSection:1]];
        [self.dataArr addObject:self.myTagsArr];
        [self.dataArr addObject:self.moreTagsArr];
        [self.tagsView reloadData];
        
    }
    
    if (indexPath.section ==1) {
        tagsModel =self.moreTagsArr[indexPath.row];
        [self.moreTagsArr removeObjectAtIndex:indexPath.row];
        [self.myTagsArr insertObject:tagsModel atIndex:0];
        
        [self.tagsView moveItemAtIndexPath:indexPath toIndexPath:[NSIndexPath indexPathForItem:0 inSection:0]];
        
        [self.dataArr addObject:self.myTagsArr];
        [self.dataArr addObject:self.moreTagsArr];
        [self.tagsView reloadData];
    }
}
@end
