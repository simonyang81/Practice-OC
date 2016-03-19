//
// Created by Simon Yang on 3/19/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeOverriding.h"


@implementation PracticeOverriding {

}

- (void)fly {

    [super fly];
    NSLog(@"我只能在水面飞翔......");

}

@end