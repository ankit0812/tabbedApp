//
//  FirstViewController.h
//  Tabbed_app_initial
//
//  Created by optimusmac4 on 7/15/15.
//  Copyright (c) 2015 optimusmac4. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> //Delegates and data sources

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end