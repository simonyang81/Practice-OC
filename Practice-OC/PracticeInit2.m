//
// Created by Simon Yang on 3/18/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeInit2.h"


@implementation PracticeInit2 {

}

@synthesize brand = _brand;
@synthesize model = _model;
@synthesize color = _color;

- (id)init {

    if (self = [super init]) {
        self.brand = @"奥迪";
        self.model = @"Q5";
        self.color = @"黑色";
    }

    return self;
}

- (id)initWithBrand:(NSString *)brand model:(NSString *)model {

    if (self = [super init]) {
        self.brand = brand;
        self.model = model;
    }

    return self;

}

- (id)initWithBrand:(NSString *)brand model:(NSString *)model color:(NSString *)color {

    if (self = [self initWithBrand:brand model:model]) {
        self.color = color;
    }

    return self;
}

@end