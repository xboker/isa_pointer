//
//  Person.m
//  ISA_Pointer
//
//  Created by xiekunpeng on 2020/6/29.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "Person.h"

///占用一个字节的共用体
union {
    char bits;
    ///下面结构是为了方便阅读
    struct {
        ///位域操作, big 只占用一位
        char big : 1;
        ///位域操作, middle 只占用一位
        char middle : 1;
        ///位域操作, small 只占用一位
        char small : 1;
    };
}AllBool;

#define  BigMask    (1<<0)
#define  MiddleMask (1<<1)
#define  SmallMask  (1<<2)

@implementation Person

- (void)setBig:(BOOL)big {
    if (big) {
        AllBool.bits |= BigMask;
    }else {
        AllBool.bits &= ~BigMask;
    }

}

- (void)setMiddle:(BOOL)middle {
    if (middle) {
        AllBool.bits |= MiddleMask;
    }else {
        AllBool.bits &= ~MiddleMask;
    }
}


- (void)setSmall:(BOOL)small {
    if (small) {
        AllBool.bits |= SmallMask;
    }else {
        AllBool.bits &= ~SmallMask;
    }
}


- (BOOL)big {
   return !!(AllBool.big & BigMask);
}

- (BOOL)middle {
    return !!(AllBool.middle & MiddleMask);
}

- (BOOL)small {
     return !!(AllBool.small & SmallMask);
}

@end
