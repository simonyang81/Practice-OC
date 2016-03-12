//
// Created by Simon Yang on 3/12/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PracticeSingleton : NSObject
{
    @public
    NSString * _name;
}
+ (id) instance;
@end