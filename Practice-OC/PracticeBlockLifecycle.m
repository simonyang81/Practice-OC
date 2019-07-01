//
// Created by Yang Xuesong on 2019-06-28.
// Copyright (c) 2019 Simon Yang. All rights reserved.
//

#import "PracticeBlockLifecycle.h"


@implementation PracticeBlockLifecycle {

}

void pr(int (^block) (void)) {
    printf("%d\n", block());
}

int (^g) (void) = ^{  // 1
    return 100;
};

void func1(int n) {
    int (^b1) (void) = ^ {
        return n; // 2
    };
    pr(b1);
    g = b1; // 3
}

void func2(int n) {
    int a = 10;
    int (^b2) (void) = ^ {
        return n * a;   // 4
    };
    pr(b2);
}


-(void)execute:(NSString *)name {

    NSLog(@"Hello, I am %@", name);

    func1(5);
    func2(5);
    pr(g);  // 5

}


@end