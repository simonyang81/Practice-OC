//
// Created by Simon Yang on 3/19/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PracticeDescription : NSObject

@property (nonatomic, copy) NSString* name;

- (id) initWithName:(NSString*) name;

- (void) info;

@end