//
// Created by SIMON Y on 2018/8/22.
// Copyright (c) 2018 Simon Yang. All rights reserved.
//

#import "PracticeGCD.h"


@implementation PracticeGCD {

}

-(void)execute {

    NSLog(@"-->> %@ <<--", @"Hello World");

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i < 10; ++i) {
            NSLog(@"-->>Queue1 %d <<--", i);
            [NSThread sleepForTimeInterval:1.f];
        }
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i < 10; ++i) {
            NSLog(@"-->>Queue2 %d <<--", i);
            [NSThread sleepForTimeInterval:1.f];
        }
    });

    NSLog(@"-->> %@ <<--", @"SIMON Y");

}

@end