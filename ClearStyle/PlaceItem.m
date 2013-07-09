//
//  PlaceItem.m
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import "PlaceItem.h"

@implementation PlaceItem

- (id)initWithText:(NSString *)text
{
    if (self = [super init])
    {
        self.text = text;
        self.completed = NO;
    }
    return self;
}

+ (id)placeItemWithText:(NSString *)text
{
    return [[PlaceItem alloc] initWithText:text];
}

@end
