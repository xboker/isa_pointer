//
//  ViewController.m
//  ISA_Pointer
//
//  Created by xiekunpeng on 2020/6/29.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
     Person *person = [[Person alloc] init];
    person.big = NO;
    person.middle = YES;
    person.small = YES;
    NSLog(@"person Big: %d  middle: %d   small: %d ", person.big, person.middle, person.small);
    
 
    
    
    Class personClass = [Person class];
    Class personMetaClass = object_getClass([Person class]);
    // ISA_MASK        0x0000000ffffffff8
    ///所有的类, 元类对地址结尾一定是0或者8(二进制为:0000或者1000; (一个16进制位等于4个二进制字节)
    NSLog(@"NSObject Class                      %p", [NSObject class]);
    NSLog(@"Person Class                        %p",personClass);
    NSLog(@"Person MetaClass                    %p", personMetaClass);
    NSLog(@"ViewController Meta-Class           %p", object_getClass([ViewController class]));
}




 


@end
