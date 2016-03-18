//
// Created by Simon Yang on 3/18/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeInit.h"


@implementation PracticeInit {

}

@synthesize name = _name;
@synthesize age = _age;
@synthesize address = _address;

// 覆盖父类的初始化方法
- (id)init {

    // 调用父类的init方法执行初始化, 将初始化得到的对象赋值给self对象
    // 如果self不为nil, 表明父类init方法初始化成功
    if (self = [super init]) {
        self.name       = @"孙悟空";
        self.age        = 500;
        self.address    = @"花果山, 水帘洞";
    }
    return self;

}

@end