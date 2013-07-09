//
//  TableViewCellDelegate.h
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlaceItem.h"

@protocol TableViewCellDelegate <NSObject>

- (void)placeItemDeleted:(PlaceItem *)placeItem;

@end
