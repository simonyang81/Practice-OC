//
// Created by Simon Yang on 3/22/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "SMReflection1.h"


@implementation SMReflection1 {

}

- (void)printNSDateClass {

    // 通过字符串来获取Class
    Class clazz = NSClassFromString(@"NSDate");
    NSLog(@"%@", clazz);

    // 直接使用Class来创建对象
    id date = [[clazz alloc] init];
    NSLog(@"%@", date);

    // 通过对象来获取Class
    NSLog(@"%@", [date class]);

    // 通过类来获取Class
    NSLog(@"%d", clazz == [NSDate class]);

}

@end