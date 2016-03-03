//
// Created by Simon Yang on 3/3/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeArray.h"


@implementation PracticeArray {

}

-(void)initArr:(int)val withLen:(int)len {

    for (int i = 0; i < sizeof(_array)/sizeof(_array[0]); ++i) {
        _array[i] = val;
    }
}

-(void)printArr {

    if (_array == nil || _array[0] == nil) {
        NSLog(@"The array is empty");
    }

    for (int i = 0; i < sizeof(_array) / sizeof(_array[0]); ++i) {
        NSLog(@"Array[%d]=%d", i, _array[i]);
    }
}

@end