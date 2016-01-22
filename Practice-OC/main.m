//
//  main.m
//  Practice-OC
//
//  Created by Simon Yang on 1/19/16.
//  Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap(int* p1, int* p2) {
    int tmp = *p1;
    *p1 = *p2;
    *p2 = tmp;
}

int max(int* data, int len) {
    int max = *data;
    for (int* p = data; p < data + len; ++p) {
        if (*p > max) {
            max = *p;
        }
    }

    return max;
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {

        int i1 = 1, i2 = 2;

        NSLog(@"i1 == %d, i2 == %d", i1, i2);
        swap(&i1, &i2);
        NSLog(@"i1 == %d, i2 == %d", i1, i2);

        int data[] = {1, 5, 7, 13, 10, 11};

        // function pointer
        int (*fnPt) () = max;

        NSLog(@"The max data is: %d", fnPt(data, 6));

    }

    return 0;
}