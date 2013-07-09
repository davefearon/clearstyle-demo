//
//  ViewController.h
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCellDelegate.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, TableViewCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
