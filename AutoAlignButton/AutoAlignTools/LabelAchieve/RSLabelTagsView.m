//
//  RSLabelTagsView.m
//  AutoAlignButton
//
//  Created by WhatsXie on 2017/8/28.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "RSLabelTagsView.h"
#import "TagsModel.h"
#import "RSTextColorTools.h"

#define mDeviceWidth [UIScreen mainScreen].bounds.size.width        //屏幕宽
#define mDeviceHeight [UIScreen mainScreen].bounds.size.height      //屏幕高

@interface RSLabelTagsView ()
@property (nonatomic,strong)UILabel *tagsLab;
@property (nonatomic,strong)UIView *tagsView;

@end
@implementation RSLabelTagsView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    // 创建标签容器
    _tagsView = [[UIView alloc] init];
    _tagsView.frame  = CGRectMake(0, 64, mDeviceWidth, 300);
    
    _tagsView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self addSubview:_tagsView];
}

+ (instancetype)rsLabTagsViewWithTagsArr:(NSArray *)tagsArr {
    RSLabelTagsView *sdLabTagsView =[[RSLabelTagsView alloc]init];
    sdLabTagsView.tagsArr =tagsArr;
    [sdLabTagsView setUItags:tagsArr];
    return sdLabTagsView;
}

- (void)setUItags:(NSArray *)arr {
    int width = 10;
    int j = 0;
    int row = 1;
    
    for (int i = 0 ; i < arr.count; i++) {
        TagsModel *model =arr[i];
        int labWidth = [RSTextColorTools widthForLabel:model.title fontSize:16]+10;
        UILabel *label = [[UILabel alloc] init];
        label.frame = CGRectMake(5*j + width, row * 30, labWidth, 22);
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor blackColor];
        label.text =model.title;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:16];
        label.numberOfLines = 1;
        label.layer.borderWidth = 1;
        label.textColor = [RSTextColorTools getColor:model.color];
        label.layer.borderColor = [RSTextColorTools getColor:model.color].CGColor;

        [_tagsView addSubview:label];
        width = width + labWidth;
        j++;
        
        if (width > mDeviceWidth - 50) {
            j = 0;
            width = 10;
            row++;
            label.frame = CGRectMake(5*j + width,row * 30, labWidth, 22);
            width = width + labWidth;
            j++;
        }
    }
}
@end
