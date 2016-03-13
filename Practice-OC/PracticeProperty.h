//
// Created by Simon Yang on 3/12/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PracticeProperty : NSObject


// 让系统自动合成setter和getter方法只要如下两步
// 1, 在接口部分使用@property指定定义属性.
// 2, 在类的实现部分使用@synthesize指令声明该属性.
@property NSString* name;
@property NSString* pass;

// atomic (nonatomic): 指定合成的存取方法是否为原子操作.
// 所谓原子操作, 主要是指是否线程安全.
// 如果使用atomic, 那么合成的存、取方法都是线程安全的——当一个线程进入存、取方法的方法体之后, 其他线程是无法进入存、取方法.
// 这样就可以避免多线程并发破坏对象的数据完整性, atomic是默认值.
// 虽然atomic可以保证对象数据的完整性, 但atomic的线程安全会造成性能下降.
// 因此, 大多数单线程环境下, 我们都会考虑使用nonatomic来提高存取方法的访问性能

// assign: 该指示符指定对属性只是进行简单赋值, 不更改对所赋的值的引用计数.
// 这个指示符主要适用于NSInteger等基础类型, 以及short, float, double, 结构体等各种C数据类型.

// copy: 如果使用copy指示符, 当调用setter方法对成员变量赋值时, 会将被赋值的对象复制一个副本, 再将该副本赋值给成员变量.
// copy指示符会将成员变量所引用对象的引用计数器减1.
// 当成员变量的类型是可变类型, 或其子类是可变类型时, 被赋值的对象有可能在赋值之后被修改,
// 如果程序不需要这种修改影响setter方法设置的成员变量的值, 此时就可考虑使用copy指示符

// getter、setter: 这两个指示符用于为合成的getter方法、setter方法指定自定义方法名.
// 例如, getter=abc. 指定getter方法的方法名为abc;
// setter=xyz: (因为setter方法需要带参数, 不要忘记了冒号), 则指定setter方法的方法名为xyz:
@property (nonatomic) NSDate* birth;

@property (nonatomic, copy) NSString* proWithCopy;
@property (nonatomic) NSString* proWithoutCopy;

@end