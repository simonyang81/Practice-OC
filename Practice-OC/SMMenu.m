//
// Created by Simon Yang on 4/3/16.
// Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

#import "SMMenu.h"
#import "PracticeNslog.h"
#import "PracticeArray.h"
#import "FunctionTest.h"
#import "Varargs.h"
#import "MemberVariables.h"
#import "SimulationClassVariables.h"
#import "PracticeSingleton.h"
#import "PracticeProperty.h"
#import "PracticeKVC.h"
#import "SMItem.h"
#import "PracticeKVO.h"
#import "PracticeInit.h"
#import "PracticeInit2.h"
#import "SMBird.h"
#import "PracticeOverriding.h"
#import "WrapperClass.h"
#import "PracticeDescription.h"
#import "PracticeEqual.h"
#import "NSNumber+sm.h"
#import "PracticeCallPrivate.h"
#import "PracticeCallPrivate+sm.h"
#import "SMReflection1.h"
#import "PracticeNSDate.h"
#import "PracticeGCD.h"

@implementation SMMenu {

}

-(void)printMenu {

    NSLog(@"************************");
    NSLog(@"请选择你想要演示的DEMO");
    NSLog(@"1: NSLog\n");
    NSLog(@"2: NSArray\n");
    NSLog(@"3: Function\n");
    NSLog(@"4: Varargs\n");
    NSLog(@"5: Member Variables\n");
    NSLog(@"6: Simulation Class Variables");
    NSLog(@"7: Singleton");
    NSLog(@"8: Property");
    NSLog(@"9: KVC");
    NSLog(@"10: KVO");
    NSLog(@"11: Initialization Method");
    NSLog(@"12: Overriding");
    NSLog(@"13: Wrapper Class");
    NSLog(@"14: Description");
    NSLog(@"15: Practice Equal");
    NSLog(@"16: Practice Category");
    NSLog(@"17: Call Private");
    NSLog(@"18: Reflection");
    NSLog(@"19: NSDate");
    NSLog(@"20: GCD");

    NSLog(@"0: exit");


    NSLog(@"************************");

}

-(void)gotoDemo:(int)name {

    switch (name){

        case 1:
        {
            NSLog(@"\n*** Practice NSLog ***\n");
            PracticeNslog* log = [[PracticeNslog alloc] init];
            [log print];
        }
            break;

        case 2:
        {
            NSLog(@"\n*** Practice Array ***\n");
            [self practiceArray];
        }
            break;

        case 3:
        {
            NSLog(@"\n\n*** Practice Function ***\n");
            FunctionTest *fTest = [[FunctionTest alloc] init];
            int x = [fTest max:10 maxy:20];
            NSLog(@"***The max=%d***", x);
        }
            break;

        case 4:
        {
            NSLog(@"\n\n *** Practice Varargs ***\n");
            Varargs *varargs = [[Varargs alloc] init];
            [varargs test:@"1", @"2", @"3", @"10", @"9", @"8", nil];
        }
            break;

        case 5:
            [self practiceMemberVariables];
            break;

        case 6:
        {
            NSLog(@"\n\n *** Practice Simulation Class Variables ***\n");
            [SimulationClassVariables setNation:@"中国"];
            NSLog(@"SimulationClassVariables nation == %@", [SimulationClassVariables nation]);
        }
            break;

        case 7:
            [self practiceSingleton];
            break;

        case 8:
            [self practiceProperty];
            break;

        case 9:
            [self practiceKVC];
            break;

        case 10:
            [self practiceKVO];
            break;

        case 11:
            [self initializationMethod];
            break;

        case 12:
            [self overriding];
            break;

        case 13:
            [self wrapperClass];
            break;

        case 14:
            [self practiceDescription];
            break;

        case 15:
            [self practiceEqual];
            break;

        case 16:
            [self practiceCategory];
            break;

        case 17:
            [self callPrivate];
            break;

        case 18:
            [self practiceReflection];
            break;

        case 19:
            [self practiceNSDate];
            break;

        case 20:
            [self practiceGCD];
            break;

        default:
            NSLog(@"No There");
            break;
    }

}

-(void)practiceArray{
    @autoreleasepool {
        PracticeArray* practiceArray = [[PracticeArray alloc] init];
        [practiceArray printArr];
        [practiceArray initArr:10 withLen:5];
        [practiceArray printArr];
    }
}

-(void)practiceMemberVariables{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Member Variables ***\n");
        MemberVariables *memberVariables = [[MemberVariables alloc] init];
        NSLog(@"name=%@, age=%d", memberVariables->_name, memberVariables->_age);
        memberVariables->_name = @"张三";
        memberVariables->_age = 18;
        NSLog(@"name=%@, age=%d", memberVariables->_name, memberVariables->_age);
    }
}

-(void)practiceSingleton{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Singleton ***\n");
        PracticeSingleton *singleton1 = [PracticeSingleton instance];
        singleton1->_name = @"李四";
        PracticeSingleton *singleton2 = [PracticeSingleton instance];
        NSLog(@"Singleton 1 name == %@; Singleton 2 name == %@", singleton1->_name, singleton2->_name);
        singleton2->_name = @"王五";
        NSLog(@"Singleton 1 name == %@; Singleton 2 name == %@", singleton1->_name, singleton2->_name);
    }
}

-(void)practiceProperty{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Property ***\n");
        PracticeProperty *practicePro = [[PracticeProperty alloc] init];
        [practicePro setName:@"admin"];
        [practicePro setPass:@"adminpass"];
        [practicePro setBirth:[NSDate date]];
        NSLog(@"管理员帐号为: %@, 密码为: %@, 生日为: %@",
                [practicePro name], [practicePro pass], [practicePro birth]);

        NSMutableString* str1 = [NSMutableString stringWithString:@"Simon"];
        [practicePro setProWithoutCopy:str1];
        [str1 appendString:@" is a nice man"];
        NSLog(@"pro without copy: %@", [practicePro proWithoutCopy]);

        NSMutableString* str2 = [NSMutableString stringWithString:@"Simon"];
        [practicePro setProWithCopy:str2];
        [str2 appendString:@" is a nice man"];
        NSLog(@"pro with copy: %@", [practicePro proWithCopy]);
    }
}

-(void)practiceKVC{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice KVC ***\n");
        PracticeKVC *kvc = [[PracticeKVC alloc] init];
        [kvc setValue:@"Simon" forKey:@"name"];
        NSLog(@"Get name (%@) with KVC ", [kvc valueForKey:@"name"]);
    }
}

-(void)practiceKVO{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice KVO ***\n");
        SMItem* item = [[SMItem alloc] init];
        item.name = @"iOS";
        item.price = 109;
        PracticeKVO* kvo = [[PracticeKVO alloc] init];
        kvo.item = item;
        [kvo showItemInfo];
        item.name = @"Python";
        item.price = 69;
    }
}

-(void)initializationMethod{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice initialization method  ***\n");
        PracticeInit* pInit = [[PracticeInit alloc] init];
        NSLog(@"User name: %@", pInit.name);
        NSLog(@"User age: %d", pInit.age);
        NSLog(@"User address: %@", pInit.address);

        PracticeInit2* pInit2_1 = [[PracticeInit2 alloc] init];
        NSLog(@"1. 汽车品牌: %@, 型号: %@, 颜色: %@", pInit2_1.brand, pInit2_1.model, pInit2_1.color);

        PracticeInit2* pInit2_2 = [[PracticeInit2 alloc] initWithBrand:@"奔驰" model:@"ML350"];
        NSLog(@"2. 汽车品牌: %@, 型号: %@, 颜色: %@", pInit2_2.brand, pInit2_2.model, pInit2_2.color);

        PracticeInit2* pInit2_3 = [[PracticeInit2 alloc] initWithBrand:@"宝马" model:@"X6" color:@"红色"];
        NSLog(@"3. 汽车品牌: %@, 型号: %@, 颜色: %@", pInit2_3.brand, pInit2_3.model, pInit2_3.color);
    }
}

-(void)overriding{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice overriding  ***\n");
        SMBird* bird = [[PracticeOverriding alloc] init];
        [bird fly];
    }
}

-(void)wrapperClass{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Wrapper Class  ***\n");
        WrapperClass* wrapperClass = [[WrapperClass alloc] init];
        [wrapperClass test];
    }
}

-(void)practiceDescription{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Description  ***\n");
        PracticeDescription* desc = [[PracticeDescription alloc] initWithName:@"Simon"];
        [desc info];
        NSLog(@"%@", [desc description]);
    }
}

-(void)practiceEqual{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Equal  ***\n");
        PracticeEqual* pEqual = [[PracticeEqual alloc] init];
        [pEqual test];
    }
}

-(void)practiceCategory{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Category  ***\n");
        NSNumber* number = [NSNumber numberWithDouble:3.1];
        NSLog(@"3.1 + 2.4=%@", [number add:2.4]);
        NSLog(@"3.1 - 2.4=%@", [number substract:2.4]);
        NSLog(@"3.1 * 2.4=%@", [number multiply:2.4]);
        NSLog(@"3.1 / 2.4=%@", [number divide:2.4]);
    }
}

-(void)callPrivate{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Call Private Method  ***\n");
        PracticeCallPrivate* callPrivate = [[PracticeCallPrivate alloc] init];
        NSLog(@"price(1.25) * discount(.75) = %f", [callPrivate calDiscount:.75]);
    }

}

-(void)practiceReflection{
    @autoreleasepool {
        NSLog(@"\n\n *** Practice Reflection  ***\n");
        SMReflection1* reflection = [[SMReflection1 alloc] init];
        [reflection printNSDateClass];

        Class clazz = NSClassFromString(@"SMDynamicInvocation");
        // 动态创建SMDynamicInvocation对象
        id dynamic = [[clazz alloc] init];
        [dynamic performSelector:@selector(addSpeed:) withObject:[NSNumber numberWithDouble:3.4]];

        objc_msgSend(dynamic, @selector(addSpeed:), 3.4);

        /**
         * 定义函数指针变量
         * 返回值类型 (* 指针变量名) (id, SEL, ...)
         * id: 代表方法调用者
         * SEL: 代表方法
         * 接下来可以声明调用该方法所需要的参数
         *
         */
        double (*addSpeed)(id, SEL, double);

        /**
         * NSObject还提供 -(IMP) methodForSelector:(SEL)aSelector.
         * 该方法根据传入的SEL参数, 返回该方法对应的IMP对象
         * IMP代表指向Objective-C方法的函数指针
         *
         * 定义指向Objective-C方法的函数变量,
         * ``` 返回值类型 (* 指针变量名) (id, SEL, ...) ```
         */
        addSpeed = (double(*)(id, SEL, double)) [dynamic methodForSelector:NSSelectorFromString(@"addSpeed:")];

        // 通过addSpeed函数指针变量调用dynamic对象的方法
        double speed = addSpeed(dynamic, @selector(addSpeed:), 2.4);
        NSLog(@"加速后的速度为: %g", speed);

    }
}

-(void)practiceNSDate{
    @autoreleasepool {
        PracticeNSDate* practiceNSDate = [[PracticeNSDate alloc] init];
        [practiceNSDate execute];
    }
}

-(void)practiceGCD{
    @autoreleasepool {
        PracticeGCD *practiceGCD = [[PracticeGCD alloc] init];
        [practiceGCD execute];
    }

}

@end