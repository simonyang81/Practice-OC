//
// Created by Simon Yang on 3/17/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import "PracticeKVO.h"
#import "SMItem.h"

/**
 * iOS可以利用KVO(Key Value Observing, 既键值监听)机制, 实现数据变化, 通知到显示模型
 * KVO机制NSKeyValueObserving协议提高支持, 当然, NSObject遵守了该协议, 因此,
 * NSObject子类都可使用该协议的方法
 * 该协议包含如下常用方法可用于注册监听器
 * 1, addObserver:forKeyPath:options:context: 注册一个监听器用于监听指定的key路径
 * 2, removeObserver:forKeyPath: 为key路径删除指定的监听器
 * 3, removeObserver:forKeyPath:context:为key路径删除指定的监听器. 只是多了一个context参数
 * 当数据模型组件的key路径对应属性值发生改变时, 作为监听器的视图组件将会被激发, 激发时就会回调监听器自身, 方法如下:
 * observeValueForKeyPath:ofObject:change:context:
 * 由此可见, 作为监听器的视图组件需要重写observeValueForKeyPath:ofObject:change:context:方法,
 * 重写该方法时就可以得到最新修改的数据, 从而使用最新的数据来更新视图组件的显示.
 *
 * 从上面的介绍不难看出, KVO编程的步骤非常简单
 * 1, 为监听对象(通常时数据模型组件)注册监听器
 * 2, 重写监听器的observeValueForKeyPath:ofObject:change:context:方法
 */
@implementation PracticeKVO {
}

@synthesize item = _item;

- (void)showItemInfo {
    NSLog(@"item物品名为%@, 物品价格为%d", self.item.name, self.item.price);
}

- (void)setItem:(SMItem *)item {

    _item = item;

    // 为item添加监听器, 监听item的name属性的改变
    [self.item addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];

    // 为item添加监听器, 监听item的price属性的改变
    [self.item addObserver:self forKeyPath:@"price" options:NSKeyValueObservingOptionNew context:nil];

}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object change:(NSDictionary *)change
                       context:(void *)context {
    NSLog(@"***********observeValueForKeyPath************");
    NSLog(@"被修改的keyPath为%@", keyPath);
    NSLog(@"被修改的对象为%@", object);
    NSLog(@"新被修改的属性值为%@", [change objectForKey:@"new"]);
    NSLog(@"被修改的上下文为%@", context);

}

- (void)dealloc{
    [self.item removeObserver:self forKeyPath:@"name"];
    [self.item removeObserver:self forKeyPath:@"price"];
}

@end