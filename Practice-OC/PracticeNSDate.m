//
// Created by Simon Yang on 4/1/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeNSDate.h"


@implementation PracticeNSDate {

}

-(void)execute {

    // 获取当前日期、时间的NSDate
    NSDate* date1 = [NSDate date];
    NSLog(@"当前时间:%@", date1);

    // 获取从当前时间开始, 一天之后的日期
    NSDate* date2 = [[NSDate alloc] initWithTimeIntervalSinceNow: 3600*24];
    NSLog(@"一天之后:%@", date2);

    NSDate* date3 = [[NSDate alloc] initWithTimeIntervalSinceNow: - 3*3600*24];
    NSLog(@"三天之前:%@", date3);

    // 获取系统当前的Locale
    NSLocale* cn = [NSLocale currentLocale];
    // 获取NSDate在当前Locale下对应的字符串
    NSLog(@"当前时间(cn):%@", [date1 descriptionWithLocale:cn]);

    // 获取两个日期之间较早的日期
    NSDate* earlier = [date1 earlierDate:date2];
    // 获取两个日期之前较晚的日期
    NSDate* later = [date1 laterDate:date2];
    NSLog(@"较早的日期:%@, 较晚的日期:%@", earlier, later);

    // 比较两个日期, compare:方法返回NSComparisonResult枚举值
    // 改枚举值包含NSOrderedAscending, NSOrderedSame 和 NSOrderedDescending
    // 分别代表调用compare:的日期位于被比较日期之前、相同、之后
    switch ([date1 compare:date2]) {
        case NSOrderedAscending:
            NSLog(@"date1 位于 date2 之前");
            break;
        case NSOrderedSame:
            NSLog(@"date1 与 date2 相等");
            break;
        case NSOrderedDescending:
            NSLog(@"date1 位于 date2 之后");
            break;
    }

    NSLog(@"date1与date3之前时间差为:%g秒", [date1 timeIntervalSinceDate:date3]);
    NSLog(@"date2与现在的时间差为:%g秒", [date2 timeIntervalSinceNow]);

    NSCalendar* cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];


}

@end