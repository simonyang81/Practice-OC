//
// Created by Simon Yang on 3/5/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "Varargs.h"


@implementation Varargs {

}

-(void)test:(NSString *)name, ... {

    // 使用va_list定义一个argList指针变量, 该指针指向可变参数列表
    va_list argList;

    if (name) { // 如果第一个参数name存在才需要处理后面的参数

        // 由于name参数并不在可变参数列表中, 因此先处理name参数
        NSLog(@"name=%@", name);

        // 让argList指向第一个可变参数列表的第一个参数, 开始提取可变参数列表的参数
        va_start(argList, name);

        // va_arg用于提取argList指针当前指向的参数, 并将指针移动到指向下一个参数
        // arg变量用于保存当前获取的参数, 如果该参数不为nil, 进入循环体
        NSString* arg = va_arg(argList, id);
        while (arg) {
            NSLog(@"%@", arg);
            arg = va_arg(argList, id);
        }

        // 释放argList指针, 结束提取
        va_end(argList);

    }
}

@end