//
// Created by Simon Yang on 3/2/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeNslog.h"


@implementation PracticeNslog {
}

-(id)init {
    if (self=[super init]) {
        NSLog(@"init PracticeNSlog Class");
        data = 56;
        dl = 2.3;
    }
    return self;
}

-(void)print {

    NSLog(@"==%d==", data);
    NSLog(@"==%9d==", data);    // 输出整数占9位, 并且左对齐
    NSLog(@"==%@==", @"Hello World");

    NSLog(@"==%f==", dl);   // 以小数形式输出浮点数
    NSLog(@"==%e==", dl);   // 以指数形式输出浮点数
    NSLog(@"==%g==", dl);   // 以最简形式输出浮点数
}

@end