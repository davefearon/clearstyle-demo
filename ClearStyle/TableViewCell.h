//
//  TableViewCell.h
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlaceItem.h"
#import "TableViewCellDelegate.h"

@interface TableViewCell : UITableViewCell

@property (nonatomic) PlaceItem *placeItem;

@property (nonatomic, assign) id<TableViewCellDelegate> delegate;

@end
