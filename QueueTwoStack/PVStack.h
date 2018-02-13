//
//  PVStack.h
//  QueueTwoStack
//
//  Created by Venkata Narasimham Peetla on 2/12/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVStack : NSObject <NSFastEnumeration> {
    NSMutableArray *array;
}

// Removes and returns the element at the top of the stack
- (id)pop;
// Adds the element to the top of the stack
- (void)push:(id)element;
// Removes all elements
- (void)pushElementsFromArray:(NSArray*)arr;
- (void)clear;

// Returns the object at the top of the stack
- (id)peek;
// Returns the size of the stack
- (NSInteger)size;
// Returns YES if the stack is empty
- (BOOL)isEmpty;

@end
