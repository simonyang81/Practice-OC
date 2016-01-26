//
// Created by Simon Yang on 1/26/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FKPerson : NSObject
{
    NSString *_name;
    int _age;
}

- (void) setName:(NSString *) name andAge:(int) age;
- (void) sayHi:(NSString *) content;

@end