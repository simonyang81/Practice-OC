//
// Created by Simon Yang on 3/20/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Objective-C Category
 *
 * Objective-C 的动态特征允许使用Category为现有的类添加方法, 并且不需要创建子类, 不需要访问原来类的源代码
 *
 * 下面的程序为NSNumber增加一个Category, Category接口部分的代码如下:
 *
 */
@interface NSNumber (sm)

// 在Category中定义4个方法, 相当于为NSNumber新增了四个自定义的方法
- (NSNumber *) add:(double) num2;
- (NSNumber *) substract: (double) num2;
- (NSNumber *) multiply: (double) num2;
- (NSNumber *) divide: (double) num2;

@end