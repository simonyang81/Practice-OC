//
// Created by Simon Yang on 3/15/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PracticeKVC : NSObject

// 在KVC编程方式中, 无论调用setValue:forKey方法, 还是调用valueForKey:方法,
// 都是通过NSString对象来指定被操作属性的, 其中forKey:标签用于传入属性名.

// 对于setValue:属性值 forKey@"name"; 代码, 底层的执行机制如下.
// (1) 程序优先考虑调用 "setName:属性值;" 代码通过setter方法完成设置
// (2) 如果该类没有setName:方法, KVC机制会搜索该类名为 _name 的成员变量,
// 无论该变量是在类接口部分定义, 还是在类实现部分定义, 也无论用哪个访问控制修饰,
// 这条KVC代码底层实际上就是对 _name 成员变量赋值.
// (3) 如果该类既没有 setName: 方法, 也没有定义 _name 成员变量, KVC机制会搜索该类名为name的成员变量,
// 无论该变量是在类接口部分定义, 还是在类实现部分定义, 也无论用哪个访问控制修饰,
// 这条KVC代码底层实际上就是对 name 成员变量赋值

// 对于 "valueForKey:@"name";"方法, 底层的执行机制如下
// (1) 程序优先考虑调用"name;"代码来获取该getter方法的返回值
// (2) 如果该类没有name方法, KVC机制会搜索该类名为 _name 的成员变量,
// 无论该变量是在类接口部分定义, 还是在类实现部分定义, 也无论用哪个访问控制修饰,
// 这条KVC代码底层实际就是返回 _name 成员变量的值
// (3) 如果该类没有name方法, 也没有定义 _name 成员变量, KVC机制会搜索该类名为 name 的成员变量,
// 无论该变量是在类接口部分定义, 还是在类实现部分定义, 也无论用哪个访问控制修饰,
// 这条KVC代码底层实际就是返回 name 成员变量的值

// 总结: 先用setName:/name方法, 再用_name, 最后用name

@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* pass;
@property (nonatomic, copy) NSDate* birth;

@end