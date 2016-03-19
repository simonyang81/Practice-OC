//
// Created by Simon Yang on 3/19/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Objective-C提供了NSValue、NSNumber来封装C语言的基本类型, 这样就可以让他们具有面向对象的特征
 * 在进行iOS开发时, 可能会遇到如下3个类型, 她们并不是包装类, 依然是基本类型
 * 1. NSInteger: 大致相当于long型整数
 * 2. NSUInteger: 大致等于unsigned long型整数
 * 3. CGFloat: 在64位平台大致相当于double, 在32平台大致相当于float.
 *
 * NSNumber 主要包括如下3个方法:
 * 1. +numberWithXxx: 该类方法直接将特定类型的值包装成NSNumber
 * 2. -initWithXxx: 该实例方法需要先创建一个NSNumber对象, 在用一个基本类型的值来初始化NSNumber
 * 3. -xxxValue: 该实例方法返回该NSNumber对象包装的基本类型的值
 */
@interface WrapperClass : NSObject

- (void) test;

@end