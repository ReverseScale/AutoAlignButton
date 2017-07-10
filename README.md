# AutoAlignButton

![image](http://og1yl0w9z.bkt.clouddn.com/17-6-30/11846761.jpg)

![](https://img.shields.io/badge/platform-iOS-red.svg) ![](https://img.shields.io/badge/language-Objective--C-orange.svg) ![](https://img.shields.io/badge/download-791K-brightgreen.svg
) ![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

日常开发中对卡片布局需求很多，而 CollectionView 的量级又过重，就想着封装一份轻量级的卡片布局工具，基于 UIView+UIButton，支持图片、文字、自适应布局和手势等，使用安全方便。

| 名称 |1.列表页 |2.展示页 |
| ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-7-6/3784951.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-7-6/46502091.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | AutoAlignButton封装创建 |

## Requirements 要求
* iOS 7+
* Xcode 8+

## Usage 使用方法
### AutoAlignButtonView 封装方法
#### 1.基本方法 
```objc
/*
* 是否九宫格 默认:打开
*/
@property (nonatomic, assign) BOOL isScratchableLatex;
/*
* 是：自动布局
*    countHorizonal 九宫格横排数量
*/
@property (nonatomic, assign) NSInteger countHorizonal;
/*
* 否：参数布局
*    buttonVerticalPadding 竖向间距
*    buttonHorizonalPadding 横向间距
*/
@property (nonatomic, assign) CGFloat buttonVerticalPadding;
@property (nonatomic, assign) CGFloat buttonHorizonalPadding;

```
#### 2.增强方法

```objc
/*
* 是否开启圆角 默认:关闭 打开后根据需要设置圆角参数（离屏渲染待优化）
*/
@property (nonatomic, assign) BOOL isCornerRadius;


// 数据源 （必选方法）
@property (nonatomic, copy) NSArray *dataTitleArray;
@property (nonatomic, copy) NSArray *dataImagesArray;

// 点击事件delegate
@property (nonatomic, weak) id<AutoAlignButtonViewDelegate> delegate;

```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!
### 你的star是我持续更新的动力!


## License 许可证
AutoAlignButton 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io


