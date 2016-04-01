//
// Created by Simon Yang on 3/17/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SMItem;


@interface SMOrder : NSObject

@property (nonatomic, strong) SMItem* item;
@property (nonatomic, assign) int amount;

-(int) totalPrice;

@end