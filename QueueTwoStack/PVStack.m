//
//  PVStack.m
//  QueueTwoStack
//
//  Created by Venkata Narasimham Peetla on 2/12/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import "PVStack.h"

@implementation PVStack

- (instancetype)init {
    if (self = [super init]) {
        array = [[NSMutableArray alloc] init];
    }

    return self;
}

- (void)push:(id)element
{
    [array addObject:element];
}

- (void)pushElementsFromArray:(NSArray*)arr
{
    [array addObjectsFromArray:arr];
}

- (id)pop
{
    id object = [self peek];
    [array removeLastObject];
    return object;
}

- (id)peek
{
    return [array lastObject];
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

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id __unsafe_unretained [])buffer count:(NSUInteger)len;
{
    return [array countByEnumeratingWithState:state objects:buffer count:len];
}

@end
