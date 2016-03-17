//
// Created by Simon Yang on 3/17/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SMItem;


@interface PracticeKVO : NSObject

@property (nonatomic, weak) SMItem* item;

- (void) showItemInfo;

@end