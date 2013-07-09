//
//  PlaceItem.h
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlaceItem : NSObject

// A text description of this item
@property (nonatomic, copy) NSString *text;

// A Boolean value that determines the completed state of this item
@property (nonatomic) BOOL *completed;

// Returns as item initialized with the given text
- (id)initWithText:(NSString *)text;

// Returns an item initialized with the given text
+ (id)placeItemWithText:(NSString *)text;

@end
