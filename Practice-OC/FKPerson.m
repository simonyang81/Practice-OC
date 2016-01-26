//
// Created by Simon Yang on 1/26/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "FKPerson.h"


@implementation FKPerson {

}

- (void)setName:(NSString *)name andAge:(int)age {
    _name = name;
    _age = age;
}

- (void) sayHi:(NSString *)content {
    NSLog(@"Hello %@,\n %@", _name, content);
}

@end