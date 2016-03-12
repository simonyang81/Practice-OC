//
// Created by Simon Yang on 3/12/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeSingleton.h"


static id instance = nil;

@implementation PracticeSingleton {

}


+ (id)instance {

    if (!instance) {
        instance = [[super alloc] init];
    }

    return instance;

}

@end