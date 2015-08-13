//
//  Tabbed_app_initialTests.m
//  Tabbed_app_initialTests
//
//  Created by optimusmac-12 on 14/07/15.
//  Copyright (c) 2015 optimusmac4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PrivateViewController.h"
#import "PrivateCollectionViewController.h"

@interface Tabbed_app_initialTests : XCTestCase

@property (nonatomic,strong) FirstViewController *viewController;

@property (nonatomic,strong) SecondCollectionViewController *secondViewController;

@end

@implementation Tabbed_app_initialTests

//This block is intended to contain the code we want to run before each test
//Testing that view loads and has UITableView as subview
- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.viewController = [storyboard instantiateViewControllerWithIdentifier:@"testTableView"];
    [self.viewController performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
    
    self.secondViewController = [storyboard instantiateViewControllerWithIdentifier:@"collectionIdentifier"];
    
    [self.secondViewController performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.viewController = nil;
    [super tearDown];
}

#pragma mark - View loading tests

-(void)testViewLoads
{
    XCTAssertNotNil(self.viewController.view, @"View not initiated properly");
    XCTAssertNotNil(self.secondViewController.view, @"View not initiated properly");
}

- (void)testParentViewHasTableViewSubview
{
    NSArray *subviews = self.viewController.view.subviews;
    XCTAssertFalse([subviews containsObject:self.viewController.tableView], @"View has a table subview");

}
- (void)testParentViewHasCollectionViewSubview
{
NSArray *subviews1 = self.secondViewController.view.subviews;
XCTAssert([subviews1 containsObject:self.secondViewController.collView], @"View has a collection subview");
}

-(void)testThatTableViewLoads
{
    XCTAssertNotNil(self.viewController.tableView, @"TableView not initiated");
    
    
}
-(void)testThatCollectionViewLoads
{
    
    XCTAssertNotNil(self.secondViewController.collView, @"CollectionView not initiated");
    
}

#pragma mark - UITableView tests

//Test to check view conforms table view data source
- (void)testViewConformsToUITableViewDataSource
{
    XCTAssertTrue([self.viewController conformsToProtocol:@protocol(UITableViewDataSource) ], @"View does not conform to UITableView datasource protocol");
    
    XCTAssertTrue([self.secondViewController conformsToProtocol:@protocol(UITableViewDataSource) ], @"View does not conform to UITableView datasource protocol");
    
    
}



- (void)testTableViewDataSource
{
    XCTAssertNotNil(self.viewController.tableView.dataSource, @"Table datasource cannot be nil");
}

- (void)testToCheckConformityWithDelegates
{
    XCTAssertTrue([self.viewController conformsToProtocol:@protocol(UITableViewDelegate) ], @"View does not conform to UITableView delegate protocol");
    
    XCTAssertTrue([self.secondViewController conformsToProtocol:@protocol(UITableViewDelegate) ], @"View does not conform to UITableView delegate protocol");
    
    
}

// TableViewConnected to Delegate or not
- (void)testTableOrCollectionViewIsConnectedToDelegate
{
    XCTAssertNotNil(self.viewController.tableView.delegate, @"Table delegate cannot be nil");
    
    XCTAssertNotNil(self.secondViewController.collView.delegate, @"Table delegate cannot be nil");
}


//Height for table
- (void)testTableViewHeightForRowAtIndexPath
{
    CGFloat expectedHeight = 44.0;
    CGFloat actualHeight = self.viewController.tableView.rowHeight;
    XCTAssertEqual(expectedHeight, actualHeight, @"Cell should have %f height, but they have %f", expectedHeight, actualHeight);
}


// Table view is creating Cells with particular Reuse Identifier
- (void)testTableViewCellCreateCellsWithReuseIdentifier
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    UITableViewCell *cell = [self.viewController tableView:self.viewController.tableView cellForRowAtIndexPath:indexPath];
    NSString *expectedReuseIdentifier =@"SimpleTableCell";
    XCTAssertTrue([cell.reuseIdentifier isEqualToString:expectedReuseIdentifier], @"Table does not create reusable cells");
}
@end


