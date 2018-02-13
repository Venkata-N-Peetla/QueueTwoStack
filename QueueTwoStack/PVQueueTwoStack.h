//
//  PVQueueTwoStack.h
//  QueueTwoStack
//
//  Created by Venkata Narasimham Peetla on 2/12/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PVStack.h"

@interface PVQueueTwoStack : NSObject {
    PVStack *_inStack;
    PVStack *_outStack;
}

- (void)enqueue:(NSNumber *)item;
- (NSNumber *)dequeue;

@end
