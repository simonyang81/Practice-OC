//
// Created by Simon Yang on 3/18/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PracticeInit2 : NSObject

@property (nonatomic, copy) NSString* brand;
@property (nonatomic, copy) NSString* model;
@property (nonatomic, copy) NSString* color;

- (id) initWithBrand:(NSString*) brand model:(NSString*) model;
- (id) initWithBrand:(NSString*) brand model:(NSString*) model color:(NSString*) color;

@end