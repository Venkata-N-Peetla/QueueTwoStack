//
//  PVQueueTwoStack.m
//  QueueTwoStack
//
//  Created by Venkata Narasimham Peetla on 2/12/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import "PVQueueTwoStack.h"

@implementation PVQueueTwoStack

- (instancetype)init {
    if (self = [super init]) {
        _inStack = [PVStack new];
        _outStack = [PVStack new];
    }

    return self;
}

- (void)enqueue:(NSNumber *)item {
    [_inStack push:item];
}

- (NSNumber *)dequeue {
    if (_outStack.size == 0) {

        // Move items from _inStack to _outStack, reversing order
        while (_inStack.size > 0) {
            NSNumber *newestInStackItem = [_inStack pop];
            [_outStack push:newestInStackItem];
        }

        // If _outStack is still empty, raise an error
        NSAssert(_outStack.size, @"Can't dequeue from empty queue");
    }

    return [_outStack pop];
}

@end
