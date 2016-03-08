//
// Created by Simon Yang on 3/8/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "SimulationClassVariables.h"

// Objective-C 并不支持类似于Java的类变量.
// 为了模拟类变量, 可以在类实现部分定义一个static修饰的全局变量,
// 并提供一个类方法 (+) 来暴露该全局变量
static NSString * nation = nil;

@implementation SimulationClassVariables {

}

+ (NSString *)nation {
    return nation;
}

+ (void)setNation:(NSString *)newNation {
    if(![nation isEqualToString: newNation]) {
        nation = newNation;
    }
}

@end