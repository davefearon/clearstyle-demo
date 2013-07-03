//
//  PlaceItem.m
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import "PlaceItem.h"

@implementation PlaceItem

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithText:(NSString *)text
{
    if (self = [super init])
    {
        self.text = text;
    }
    return self;
}

+ (id)placeItemWithText:(NSString *)text
{
    return [[PlaceItem alloc] initWithText:text];
}

@end
