//
// Created by Simon Yang on 3/19/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeDescription.h"


@implementation PracticeDescription {

}

@synthesize name = _name;

- (id)initWithName:(NSString *)name {

    if (self = [super init]) {
        _name = name;
    }

    return self;
}

- (void)info {
    NSLog(@"此人名字为: %@", _name);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<PracticeDescription[_name=%@]>", _name];
}

@end