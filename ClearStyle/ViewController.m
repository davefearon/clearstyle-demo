//
//  ViewController.m
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import "ViewController.h"
#import "PlaceItem.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController
// an array of to-do items
NSMutableArray* _toDoItems;
NSMutableArray* _placeItems;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _placeItems = [[NSMutableArray alloc] init];
    [_placeItems addObject:[PlaceItem placeItemWithText:@"Little Skillet"]];
    [_placeItems addObject:[PlaceItem placeItemWithText:@"Small"]];
    [_placeItems addObject:[PlaceItem placeItemWithText:@"Ozone Thai"]];
    [_placeItems addObject:[PlaceItem placeItemWithText:@"The American Grilled Cheese Kitchen"]];
    
//    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor blackColor];
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor *)colorForIndex:(NSInteger) index
{
    NSUInteger itemCount = _placeItems.count - 1;
    float val = ((float)index / (float)itemCount) * 0.6;
    return [UIColor colorWithRed:1.0 green:val blue:0.0 alpha:1.0];
}

#pragma mark - UITableViewDataSource protocol methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _placeItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *ident = @"cell";
    
    TableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:ident forIndexPath:indexPath];
    
    int index = [indexPath row];
    PlaceItem *item = _placeItems[index];
    
    cell.delegate = self;
    cell.placeItem = item;

    cell.textLabel.text = item.text;
//    cell.textLabel.backgroundColor = [UIColor clearColor];
    
    return cell;
}

#pragma mark - UITableViewDataDelegate protocol methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0f;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [self colorForIndex:indexPath.row];
}

- (void)placeItemDeleted:(id)placeItem
{
    NSUInteger index = [_placeItems indexOfObject:placeItem];
    [self.tableView beginUpdates];
    [_placeItems removeObject:placeItem];
    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForItem:index inSection:0]] withRowAnimation:UITableViewRowAnimationFade];
    [self.tableView endUpdates];
}

@end
