//
//  main.m
//  Practice-OC
//
//  Created by Simon Yang on 1/19/16.
//  Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMMenu.h"

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

void map(int* data, int len, int (*fn) ()) {

    for (int* p = data; p < data + len; p++) {
        printf("%p-%p,", p, data);
    }

    printf("\n\n");

    for (int*p = data; p < data + len; p++) {
        printf("%d, ", (*fn)(*p));
    }

    printf("\n");
}

int noChange(int val) {
    return val;
}

int square(int val) {
    return val * val;
}

int cube(int val) {
    return val * val * val;
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {

        SMMenu* menu = [[SMMenu alloc] init];
        [menu printMenu];

        while (YES) {
            int name = 0;
            scanf("%i", &name);
            if (0 == name) {
                break;
            }
            [menu gotoDemo:name];
        }



//        int i1 = 1, i2 = 2;
//
//        NSLog(@"i1 == %d, i2 == %d", i1, i2);
//        swap(&i1, &i2);
//        NSLog(@"i1 == %d, i2 == %d", i1, i2);
//
//        int data[] = {1, 5, 7, 13, 10, 11};
//
//        // function pointer
//        int (*fnPt) () = max;
//
//        NSLog(@"The max data is: %d", fnPt(data, 6));

    }

    return 0;
}