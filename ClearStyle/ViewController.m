//
//  ViewController.m
//  ClearStyle
//
//  Created by Dave Fearon on 7/3/13.
//  Copyright (c) 2013 Dave Fearon. All rights reserved.
//

#import "ViewController.h"
#import "PlaceItem.h"

@interface ViewController ()

@end

@implementation ViewController

NSMutableArray* _placeItems;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        _placeItems = [[NSMutableArray alloc] init];
        [_placeItems addObject:[PlaceItem placeItemWithText:@"Little Skillet"]];
        [_placeItems addObject:[PlaceItem placeItemWithText:@"Small"]];
        [_placeItems addObject:[PlaceItem placeItemWithText:@"Ozone Thai"]];
        [_placeItems addObject:[PlaceItem placeItemWithText:@"The American Grilled Cheese Kitchen"]];
    }
    return self;
}

@end


//@implementation ViewController
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//@end
