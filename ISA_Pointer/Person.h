//
//  Person.h
//  ISA_Pointer
//
//  Created by xiekunpeng on 2020/6/29.
//  Copyright © 2020 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
///通过共用体和位域的操作实现一个字节存放几个BOOL类型的变量
@interface Person : NSObject

- (void)setBig:(BOOL)big;
- (void)setMiddle:(BOOL)middle;
- (void)setSmall:(BOOL)small;

- (BOOL)big;
- (BOOL)middle;
- (BOOL)small;


@end

NS_ASSUME_NONNULL_END
