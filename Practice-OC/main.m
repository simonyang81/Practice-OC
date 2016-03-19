//
//  main.m
//  Practice-OC
//
//  Created by Simon Yang on 1/19/16.
//  Copyright (c) 2016 Simon Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"
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
#import "PracticeOverriding.h"

void swap(int* p1, int* p2) {
    int tmp = *p1;
    *p1 = *p2;
    *p2 = tmp;
}

int max(int* data, int len) {
    int max = *data;
    for (int* p = data; p < data + len; ++p) {
        if (*p > max) {
            max = *p;
        }
    }

    return max;
}

void map(int* data, int len, int (*fn) ()) {

    for (int* p = data; p < data + len; p++) {
        printf("%p-%p,", p, data);
    }

    printf("\n\n");

    for (int*p = data; p < data + len; p++) {
        printf("%d, ", (*fn)(*p));
    }

    printf("\n");
}

int noChange(int val) {
    return val;
}

int square(int val) {
    return val * val;
}

int cube(int val) {
    return val * val * val;
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {

        NSLog(@"\n*** Practice NSLog ***\n");
        PracticeNslog* log = [[PracticeNslog alloc] init];
        [log print];

        NSLog(@"\n*** Practice Array ***\n");
        PracticeArray* practiceArray = [[PracticeArray alloc] init];
        [practiceArray printArr];
        [practiceArray initArr:10 withLen:5];
        [practiceArray printArr];

//        int data[] = {20, 12, 8, 36, 24};
//
//        map(data, sizeof(data)/sizeof(data[0]), cube);

        NSLog(@"\n\n*** Practice FKPerson ***\n");
        FKPerson* person = [[FKPerson alloc] init];
        [person setName:@"Simon" andAge:35];
        [person sayHi:@"How do you do!"];

        NSLog(@"\n\n*** Practice FunctionTest ***\n");
        FunctionTest* fTest = [[FunctionTest alloc] init];
        int x = [fTest max:10 maxy:20];
        NSLog(@"***The max=%d***", x);

        NSLog(@"\n\n*** Practice FunctionTest with id type ***\n");
        id fTestId = [[FunctionTest alloc] init];
        x = [fTestId max:10 maxy:20];
        NSLog(@"***The max=%d***", x);

        NSLog(@"\n\n *** Practice Varargs ***\n");
        Varargs* varargs = [[Varargs alloc] init];
        [varargs test: @"1", @"2", @"3", @"10", @"9", @"8", nil];

        NSLog(@"\n\n *** Practice Member Variables ***\n");
        MemberVariables* memberVariables = [[MemberVariables alloc] init];
        NSLog(@"name=%@, age=%d", memberVariables->_name, memberVariables->_age);
        memberVariables->_name = @"张三";
        memberVariables->_age = 18;
        NSLog(@"name=%@, age=%d", memberVariables->_name, memberVariables->_age);

        NSLog(@"\n\n *** Practice Simulation Class Variables ***\n");
        [SimulationClassVariables setNation:@"中国"];
        NSLog(@"SimulationClassVariables nation == %@", [SimulationClassVariables nation]);

        NSLog(@"\n\n *** Practice Singleton ***\n");
        PracticeSingleton* singleton1 = [PracticeSingleton instance];
        singleton1->_name = @"李四";
        PracticeSingleton* singleton2 = [PracticeSingleton instance];
        NSLog(@"Singleton 1 name == %@; Singleton 2 name == %@", singleton1->_name, singleton2->_name);
        singleton2->_name = @"王五";
        NSLog(@"Singleton 1 name == %@; Singleton 2 name == %@", singleton1->_name, singleton2->_name);

        NSLog(@"\n\n *** Practice Property ***\n");
        PracticeProperty* practicePro = [[PracticeProperty alloc] init];
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


        NSLog(@"\n\n *** Practice KVC ***\n");
        PracticeKVC* kvc = [[PracticeKVC alloc] init];
        [kvc setValue:@"Simon" forKey:@"name"];
        NSLog(@"Get name (%@) with KVC ", [kvc valueForKey:@"name"]);

        NSLog(@"\n\n *** Practice KVO ***\n");
        SMItem* item = [[SMItem alloc] init];
        item.name = @"iOS";
        item.price = 109;
        PracticeKVO* kvo = [[PracticeKVO alloc] init];
        kvo.item = item;
        [kvo showItemInfo];
        item.name = @"Python";
        item.price = 69;

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

        NSLog(@"\n\n *** Practice overriding  ***\n");
        SMBird* bird = [[PracticeOverriding alloc] init];
        [bird fly];



//        SimulationClassVariables* simulationClassVariables = [[SimulationClassVariables alloc] init];
//        simulationClassVariables.set

//        int i1 = 1, i2 = 2;
//
//        NSLog(@"i1 == %d, i2 == %d", i1, i2);
//        swap(&i1, &i2);
//        NSLog(@"i1 == %d, i2 == %d", i1, i2);
//
//        int data[] = {1, 5, 7, 13, 10, 11};
//
//        // function pointer
//        int (*fnPt) () = max;
//
//        NSLog(@"The max data is: %d", fnPt(data, 6));

    }

    return 0;
}