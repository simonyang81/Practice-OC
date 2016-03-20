//
// Created by Simon Yang on 3/20/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeCallPrivate.h"


@implementation PracticeCallPrivate {

}

@synthesize price = _price;

- (id) init {

    if (self = [super init]) {
        _price = 1.25;
    }

    return self;
}

- (void)info {
    NSLog(@"这是一个普通的方法");
}

/**
 * 额外新增的方法
 * 这就是Objective-C所谓的"私有方法": 在实现类里面单独实现的方法, 并没有在接口里面定义;
 * 通常情况下, 直接通过PracticeCallPrivate对象调用该方法必然导致错误
 *
 * 为了能正常调用该方法, 程序可以在Category中定义该方法
 *
 */
- (double) calDiscount:(double) discount {
    return _price * discount;
}

@end