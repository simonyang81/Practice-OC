//
// Created by Simon Yang on 3/3/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PracticeArray : NSObject {
    int _array[10];
}

-(void) initArr:(int) val withLen:(int) len;

-(void) printArr;

@end