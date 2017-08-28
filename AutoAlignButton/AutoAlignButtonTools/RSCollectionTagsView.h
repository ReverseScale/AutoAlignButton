//
//  RSCollectionTagsView.h
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSCollectionTagsView : UIView
@property (nonatomic,strong)NSArray *tagsArr;
+ (instancetype)rsTagsViewWithTagsArr:(NSArray*)tagsArr;
@end
