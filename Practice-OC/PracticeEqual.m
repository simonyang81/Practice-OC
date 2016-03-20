//
// Created by Simon Yang on 3/19/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeEqual.h"


@implementation PracticeEqual {

}

-(void)test {

    NSString* s1 = @"simonyang";
    NSString* s2 = @"simonyang";

    NSLog(@"s1与s2是否相等(==): %d", (s1 == s2));

    NSString* s3 = [NSString stringWithFormat:@"simonyang"];
    NSLog(@"s1与s3是否相等(==): %d", (s1 == s3));
    NSLog(@"s1与s3是否相等(isEqual): %d", [s1 isEqual:s3]);

    NSString* s4 = [NSString stringWithFormat:@"simonyang"];
    NSLog(@"s3与s4是否相等(==): %d", (s3 == s4));



}

@end