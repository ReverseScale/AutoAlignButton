//
//  RSLabelTagsView.h
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSLabelTagsView: UIView
@property (nonatomic,strong)NSArray *tagsArr;
+ (instancetype)rsLabTagsViewWithTagsArr:(NSArray *)tagsArr;
@end
