//
//  RSCollectionTagsView.m
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "RSCollectionTagsView.h"
#import "RSTextColorTools.h"
#import "TagsModel.h"

#define RSRectangleTagMaxCoult 3 // 矩阵标签时，最多列数
#define RStagsView @"RStagsView"

#define mDeviceWidth [UIScreen mainScreen].bounds.size.width        //屏幕宽
#define mDeviceHeight [UIScreen mainScreen].bounds.size.height      //屏幕高

@interface RSCollectionTagsView ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *collectionView;

@property (nonatomic,strong)UIView *rsTagsView;
@end
@implementation RSCollectionTagsView

+ (instancetype)rsTagsViewWithTagsArr:(NSArray*)tagsArr {
    RSCollectionTagsView *sdTagsView =[[RSCollectionTagsView alloc]init];
    sdTagsView.tagsArr =[[NSArray alloc]initWithArray:tagsArr];
    return sdTagsView;
}
- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUP];
    }
    return self;
}

- (void)setUP {
    
    [self addSubview:self.collectionView];
}



- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.minimumLineSpacing = 5;
        flowLayout.minimumInteritemSpacing = 5;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, 20, mDeviceWidth-30, mDeviceHeight-44) collectionViewLayout:flowLayout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        //        _collectionView.backgroundColor=[UIColor redColor];
        [_collectionView setBackgroundColor:[UIColor clearColor]];
        //        [sdTagsView addSubview:_collectionView];
        //注册
        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:RStagsView];
    }
    return _collectionView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.tagsArr.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    TagsModel *model =self.tagsArr[indexPath.row];
    CGFloat width = [RSTextColorTools widthForLabel:[NSString stringWithFormat:@"%@",model.title] fontSize:16];
    return CGSizeMake(width+10,22);
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:RStagsView forIndexPath:indexPath];
    TagsModel *model =self.tagsArr[indexPath.row];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = [NSString stringWithFormat:@"%@",model.title];
    label.frame = CGRectMake(0, 0, ([RSTextColorTools widthForLabel:label.text fontSize:16] + 10), 22);
    label.font = [UIFont systemFontOfSize:16];
    label.layer.cornerRadius = 2.0;
    label.layer.masksToBounds = YES;
    label.layer.borderWidth = 1.0;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [RSTextColorTools getColor:model.color];
    label.layer.borderColor = [RSTextColorTools getColor:model.color].CGColor;
    [cell.contentView addSubview:label];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    TagsModel *model =self.tagsArr[indexPath.row];
    NSLog(@"index:%@",model.title);
}

@end
