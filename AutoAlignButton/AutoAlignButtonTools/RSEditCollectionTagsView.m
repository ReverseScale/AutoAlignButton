//
//  EditCollectionTagsView.m
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "RSEditCollectionTagsView.h"
#import "TagsModel.h"
#import "RSTextColorTools.h"

#define RStagsView @"RStagsView"
#define RStagsHeadView @"RStagsHeadView"

#define mDeviceWidth [UIScreen mainScreen].bounds.size.width        //屏幕宽
#define mDeviceHeight [UIScreen mainScreen].bounds.size.height      //屏幕高

#define mHexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define mHexRGBAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]
#define fontHightColor mHexRGB(0x3c3c3c) //字体深色
#define fontNomalColor mHexRGB(0xa0a0a0) //字体浅色
#define borderCol mHexRGB(0xe4e4e4)    //border颜色


@interface RSEditCollectionTagsView ()<UICollectionViewDelegate, UICollectionViewDataSource>

@end
@implementation RSEditCollectionTagsView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout {
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
        
        [self setBackgroundColor:[UIColor clearColor]];
        
        //注册
        [self registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:RStagsView];
        //注册头部
        [self registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:RStagsHeadView];
        
    }
    return self;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.dataArr.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSArray *arr =self.dataArr[section];
    
    return arr.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSArray *arr =self.dataArr[indexPath.section];
    TagsModel *model =arr[indexPath.row];
    CGFloat width = [RSTextColorTools widthForLabel:[NSString stringWithFormat:@"%@",model.title] fontSize:16];
    return CGSizeMake(width+10,32);
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:RStagsView forIndexPath:indexPath];
    
    NSArray *arr =self.dataArr[indexPath.section];
    TagsModel *model =arr[indexPath.row];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = [NSString stringWithFormat:@"%@",model.title];
    label.frame = CGRectMake(0, 10, ([RSTextColorTools widthForLabel:label.text fontSize:16] + 10), 22);
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

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *arr =self.dataArr[indexPath.section];
    
    TagsModel *model =arr[indexPath.row];
    
    if ([self.sd_delegate respondsToSelector:@selector(RSCollectionTagsView:didSelectItemAtIndexPath:)]){
        [self.sd_delegate RSCollectionTagsView:self didSelectItemAtIndexPath:indexPath];
    }
    
    NSLog(@"index:%@",model.title);
}

//头部试图大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(mDeviceWidth, 30);
}
//头视图
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    UICollectionReusableView *headView = (UICollectionReusableView *)[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:RStagsHeadView forIndexPath:indexPath];
    UILabel *titlelabel = [[UILabel  alloc]init];
    titlelabel.frame = CGRectMake(0, 0, 100, 30);
    titlelabel.textColor = fontHightColor;
    
    UILabel *detaillabel = [[UILabel  alloc]init];
    detaillabel.frame = CGRectMake(100, 0, mDeviceWidth-100, 30);
    detaillabel.textColor = fontNomalColor;
    detaillabel.font =[UIFont systemFontOfSize:12];
    
    
    
    
    titlelabel.textColor = fontHightColor;
    if (indexPath.section==0){
        titlelabel.text =@"我的标签";
        detaillabel.text =@"(点击我的标签可以移除)";
        
    }
    else if(indexPath.section==1){
        titlelabel.text =@"所有标签";
        detaillabel.text =@"(点击所有标签添加到我的标签)";
        
    }
    
    
    //头部view下划线
    UIView *line = [[UIView alloc]init];
    line.backgroundColor = borderCol;
    line.frame =CGRectMake(0, 30, mDeviceWidth, 0.5);
    [headView addSubview:line];
    [headView addSubview:titlelabel];
    [headView addSubview:detaillabel];
    return headView;
}


@end
