//
// Created by Simon Yang on 3/12/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PracticeProperty : NSObject


// 让系统自动合成setter和getter方法只要如下两步
// 1, 在接口部分使用@property指定定义属性.
// 2, 在类的实现部分使用@synthesize指令声明该属性.
@property (nonatomic) NSString* name;
@property NSString* pass;
@property NSDate* birth;

@end