# AutoAlignButton

![image](http://og1yl0w9z.bkt.clouddn.com/17-6-30/11846761.jpg)

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-791K-brightgreen.svg)
[![CocoaPods](http://img.shields.io/cocoapods/v/AutoAlignButtonTools.svg?style=flat)](http://cocoapods.org/pods/AutoAlignButtonTools)&nbsp;
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 
[![Build Status](https://travis-ci.org/ReverseScale/AutoAlignButton.svg?branch=master)](https://travis-ci.org/ReverseScale/AutoAlignButton.svg?branch=master)

Routine development on the card layout needs a lot, and the the CollectionView heavy and heavy, wanted to package a lightweight card layout tools, based on the UIButton follow-up and make up UICollectionView and UILabel based on the realization of support for pictures, text , Adaptive layout and gestures, the use of safe and convenient.
(Swift version: https://github.com/ReverseScale/AutoAlignButtonSwift)

### 🎨 What does the test UI look like?

| Name | 1. Multiple implementation list page | 2 based on the Button implementation | 3 based on the Label implementation | 4 editable collection implementation | 5 graphic mixed Button implementation |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| Screenshots | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/24441803.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/17083630.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/8920945.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/38983256.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/66404166.jpg) |
| Description | Through the storyboard to build the basic framework | UIButton + UIView implementation | UILabel + UIView implementation | Editable UICollectionView implementation | Graphic and textual hybrid implementation based on UIButton + UIView |

## 🚀 Advantage 
* 1. Lightweight architecture, fewer files, concise code
* 2. Do not rely on any other third-party libraries
* 3. Separate graphics and text button to achieve
* 4. Support SDWebImage or YYWebImage extension
* 5. Have a higher custom

## 🤖 Requirements 
* iOS 7+
* Xcode 8+

## 🎯 Installation
### 1. Manual installation:
`After downloading the Demo, drag the function folder into the project and start using the header file. `
### 2.CocoaPods Installation:
Modify "Podfile" file
```
pod 'AutoAlignButtonTools',:git => 'https://github.com/ReverseScale/AutoAlignButtonToolsCocoapodsDemo.git'
```
Console Execute Pods Installation Command (Simplified Installation: pod install --no-repo-update)
```
pod install
```
> If the pod search found is not the latest version, the terminal pod setup command to update the local spec image cache, search again OK

##  🛠 Usage Usage
### AutoAlignButtonView wrapper method
#### 1. The basic method
```objc
/*
* Whether Jiugongge acquiescence: open
*/
@property (nonatomic, assign) BOOL isScratchableLatex;
/*
* Is: automatic layout
* countHorizonal Number of horizontal rows of nine squares
*/
@property (nonatomic, assign) NSInteger countHorizonal;
/*
Is: automatic layout
* countHorizonal Number of horizontal rows of a square grid a * No: Parameter layout
* buttonVerticalPadding Vertical spacing
* buttonHorizonalPadding horizontal spacing
*/
@property (nonatomic, assign) CGFloat buttonVerticalPadding;
@property (nonatomic, assign) CGFloat buttonHorizonalPadding;

```
#### 2. ways to enhance

```objc
/*
* Whether to open the fillet default: Turn off the open according to the need to set the fillet parameters (off-screen rendering to be optimized)
*/
@property (nonatomic, assign) BOOL isCornerRadius;


// Data Source (Required Method)
@property (nonatomic, copy) NSArray *dataTitleArray;
@property (nonatomic, copy) NSArray *dataImagesArray;

// Click event delegate
@property (nonatomic, weak) id<AutoAlignButtonViewDelegate> delegate;

```


## ⚖ Protocol
```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

##  😬 Contact:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io

---
# 中文说明
日常开发中对卡片布局需求很多，而 CollectionView 的量级又过重，就想着封装一份轻量级的卡片布局工具，基于 UIButton 后续又补上基于 UICollectionView 和 UILabel 的实现方式，支持图片、文字、自适应布局和手势等，使用安全方便。
（Swift 版：https://github.com/ReverseScale/AutoAlignButtonSwift）

### 🎨 测试 UI 什么样子？

| 名称 |1.多种实现列表页 |2.基于 Button 实现 |3.基于 Label 实现 |4.可编辑 collection 实现 |5.图文混合 Button 实现 |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/24441803.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/17083630.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/8920945.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/38983256.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-8-28/66404166.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 使用 UIButton+UIView 实现 | 基于 UILabel+UIView 实现 | 可编辑UICollectionView 实现 | 基于 UIButton+UIView 的图文混合实现 |

##  🚀 框架的优势
* 1.轻量化架构，文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.分离图文实现和文字按钮实现
* 4.支持SDWebImage或者YYWebImage的扩展
* 5.具备较高自定义性

##  🤖 要求
* iOS 7+
* Xcode 8+

##  🛠 安装
### 1.手动安装:
`下载Demo后,将功能文件夹拖入到项目中, 导入头文件后开始使用。`
### 2.CocoaPods安装:
修改“Podfile”文件
```
pod 'AutoAlignButtonTools',:git => 'https://github.com/ReverseScale/AutoAlignButtonToolsCocoapodsDemo.git'
```
控制台执行 Pods 安装命令 （ 简化安装：pod install --no-repo-update ）
```
pod install
```
> 如果 pod search 发现不是最新版本，在终端执行pod setup命令更新本地spec镜像缓存，重新搜索就OK了

##  🎯 使用方法
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


## ⚖ 协议

```
MIT License

Copyright (c) 2017 ReverseScale

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


## 😬 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
