//
// Created by Simon Yang on 3/12/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeProperty.h"


@implementation PracticeProperty {

}

@synthesize name = _name;
@synthesize pass;
@synthesize birth;

- (void)setName:(NSString *)name {
    self->_name = [NSString stringWithFormat:@"++++%@", name];
}

@end