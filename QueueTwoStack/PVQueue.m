//
//  PVQueue.m
//  QueueTwoStack
//
//  Created by Venkata Narasimham Peetla on 2/12/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import "PVQueue.h"

@implementation PVQueue

- (instancetype)init {
    if (self = [super init]) {
        array = [[NSMutableArray alloc] init];
    }

    return self;
}

- (void)enqueue:(id)element
{
    [array addObject:element];
}

- (void)enqueueElementsFromArray:(NSArray *)arr
{
    [array addObjectsFromArray:arr];
}

- (void)enqueueElementsFromQueue:(PVQueue *)queue
{
    while (![queue isEmpty]) {
        [self enqueue:[queue dequeue]];
    }
}

- (id)dequeue
{
    if ([array count] > 0) {
        id object = [self peek];
        [array removeObjectAtIndex:0];
        return object;
    }

    return nil;
}

- (id)peek
{
    if ([array count] > 0)
        return [array objectAtIndex:0];

    return nil;
}

- (NSInteger)size
{
    return [array count];
}

- (BOOL)isEmpty
{
    return [array count] == 0;
}

- (void)clear
{
    [array removeAllObjects];
}

@end
