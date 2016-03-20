//
// Created by Simon Yang on 3/20/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "NSNumber+sm.h"


@implementation NSNumber (sm)

- (NSNumber *)add:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] + num2)];
}

- (NSNumber *)substract:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] - num2)];
}

- (NSNumber *)multiply:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] * num2)];
}

- (NSNumber *)divide:(double)num2 {
    return [NSNumber numberWithDouble:([self doubleValue] / num2)];
}


@end