# AutoAlignButton

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-791K-brightgreen.svg)
[![CocoaPods](http://img.shields.io/cocoapods/v/AutoAlignButtonTools.svg?style=flat)](http://cocoapods.org/pods/AutoAlignButtonTools)&nbsp;
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 
[![Build Status](https://travis-ci.org/ReverseScale/AutoAlignButton.svg?branch=master)](https://travis-ci.org/ReverseScale/AutoAlignButton.svg?branch=master)

![image](http://og1yl0w9z.bkt.clouddn.com/17-6-30/11846761.jpg)

[EN](https://github.com/ReverseScale/AutoAlignButton) | [中文](https://github.com/ReverseScale/AutoAlignButton/blob/master/README_zh.md)

Routine development on the card layout needs a lot, and the the CollectionView heavy and heavy, wanted to package a lightweight card layout tools, based on the UIButton follow-up and make up UICollectionView and UILabel based on the realization of support for pictures, text , Adaptive layout and gestures, the use of safe and convenient.

Swift version: https://github.com/ReverseScale/AutoAlignButtonSwift

### 🎨 What does the test UI look like?

| 1. Multiple implementation list page | 2 based on the Button implementation | 3 based on the Label implementation | 4 graphic mixed Button implementation |
| ------------- | ------------- | ------------- | ------------- | 
| ![](http://og1yl0w9z.bkt.clouddn.com/18-3-15/96183113.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-3-15/79297328.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-3-15/48664315.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/18-3-15/18178223.jpg) |
| Through the storyboard to build the basic | UIButton + UIView implementation | UILabel + UIView implementation | Graphic and textual hybrid implementation based |

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

##  🛠 Usage
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
