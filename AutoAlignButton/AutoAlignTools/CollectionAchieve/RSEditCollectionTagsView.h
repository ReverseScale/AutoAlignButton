//
//  EditCollectionTagsView.h
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RSCollectionTagsViewDelegate <NSObject>
- (void)RSCollectionTagsView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
@end

@interface RSEditCollectionTagsView : UICollectionView
@property (nonatomic,strong)NSMutableArray *dataArr;
@property (nonatomic,weak) id<RSCollectionTagsViewDelegate>sd_delegate;
@end
