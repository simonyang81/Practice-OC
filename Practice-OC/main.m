//
//  main.m
//  Practice-OC
//
//  Created by Simon Yang on 1/19/16.
//  Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"
#import "PracticeNslog.h"
#import "PracticeArray.h"
#import "FunctionTest.h"
#import "Varargs.h"
#import "MemberVariables.h"

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

//        NSLog(@"*** Practice NSLog ***");
        NSLog(@"\n*** Practice NSLog ***\n");
        PracticeNslog* log = [[PracticeNslog alloc] init];
        [log print];

        NSLog(@"\n*** Practice Array ***\n");
        PracticeArray* practiceArray = [[PracticeArray alloc] init];
        [practiceArray printArr];
        [practiceArray initArr:10 withLen:5];
        [practiceArray printArr];

//        int data[] = {20, 12, 8, 36, 24};
//
//        map(data, sizeof(data)/sizeof(data[0]), cube);

        NSLog(@"\n\n*** Practice FKPerson ***\n");
        FKPerson* person = [[FKPerson alloc] init];
        [person setName:@"Simon" andAge:35];
        [person sayHi:@"How do you do!"];


        NSLog(@"\n\n*** Practice FunctionTest ***\n");
        FunctionTest* fTest = [[FunctionTest alloc] init];
        int x = [fTest max:10 maxy:20];
        NSLog(@"***The max=%d***", x);

        NSLog(@"\n\n*** Practice FunctionTest with id type ***\n");
        id fTestId = [[FunctionTest alloc] init];
        x = [fTestId max:10 maxy:20];
        NSLog(@"***The max=%d***", x);

        NSLog(@"\n\n *** Practice Varargs ***\n");
        Varargs* varargs = [[Varargs alloc] init];
        [varargs test: @"1", @"2", @"3", @"10", @"9", @"8", nil];

        NSLog(@"\n\n *** Practice Member Variables ***\n");
        MemberVariables* memberVariables = [[MemberVariables alloc] init];
        NSLog(@"name=%@, age=%d", memberVariables->_name, memberVariables->_age);
        memberVariables->_name = @"张三";
        memberVariables->_age = 18;
        NSLog(@"name=%@, age=%d", memberVariables->_name, memberVariables->_age);


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