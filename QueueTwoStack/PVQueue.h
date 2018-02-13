//
//  PVQueue.h
//  QueueTwoStack
//
//  Created by Venkata Narasimham Peetla on 2/12/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVQueue : NSObject {
    NSMutableArray* array;
}

// Removes and returns the element at the front of the queue
- (id)dequeue;
// Add the element to the back of the queue
- (void)enqueue:(id)element;
// Remove all elements
- (void)enqueueElementsFromArray:(NSArray *)arr;
- (void)enqueueElementsFromQueue:(PVQueue *)queue;
- (void)clear;

// Returns the element at the front of the queue
- (id)peek;
// Returns YES if the queue is empty
- (BOOL)isEmpty;
// Returns the size of the queue
- (NSInteger)size;

@end
