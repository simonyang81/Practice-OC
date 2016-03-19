//
// Created by Simon Yang on 3/19/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "WrapperClass.h"


@implementation WrapperClass {

}

- (void)test {


    NSNumber* num = [NSNumber numberWithInt:20];
    NSNumber* de = [NSNumber numberWithDouble:3.4];

    NSLog(@"%d", [num intValue]);
    NSLog(@"%g", [de doubleValue]);

    NSNumber* ch = [[NSNumber alloc] initWithChar:'J'];
    NSLog(@"%@", ch);



}

@end