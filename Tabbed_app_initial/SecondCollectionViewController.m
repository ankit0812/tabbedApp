//
//  SecondCollectionViewController.m
//  Tabbed_app_initial
//
//  Created by optimusmac4 on 7/15/15.
//  Copyright (c) 2015 optimusmac4. All rights reserved.
//


#import "SecondCollectionViewController.h"
#import "FirstDetailViewController.h"

@interface SecondCollectionViewController (){
    
    NSArray *image;
    NSArray *names;
}
@end

@implementation SecondCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}



static NSString * const reuseIdentifier = @"Cell";         // Cell Indentifier

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor grayColor];  // Setting Background to gray
    
    //Initializing the data
    
    image = [NSArray arrayWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg", @"9.jpg", @"10.jpg", @"11.jpg", @"12.jpg", @"13.jpg", @"14.jpg", @"15.jpg", @"16.jpg", @"17.jpg", @"18.jpg", @"19.jpg", @"20.jpg", nil];
    
    names = [NSArray arrayWithObjects:@"Ankit", @"Menka", @"Abhishek Jha", @"Abhishek Roy", @"Akshi ", @"Naveta Dey", @"Darsheel", @"Mayank", @"Neha", @"Nikhil", @"Priyansha", @"Shreya", @"Vidushi", @"Ansari", @"Divyansh", @"Aashi", @"Apoorv", @"Adit", @"Aditya", @"Taha", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource> Initialise the datasource for the collection view

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
   return image.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier=@"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    UIImageView *ImageView = (UIImageView *)[cell viewWithTag:100];
    ImageView.image = [UIImage imageNamed:[image objectAtIndex:indexPath.row]];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"bigImage"]){
        
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        SecondCollectionViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        destViewController.actualImage=[image objectAtIndex:indexPath.row];
            NSLog(@" Hello    %@",destViewController.actualImage);
        
        
        destViewController.actualName = [names objectAtIndex:indexPath.row];
      
          NSLog(@"%@",destViewController.actualName);
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
        
    }
}

/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"bigImage"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        FirstDetailViewController *destViewController = segue.destinationViewController;
        destViewController.actualName = [names objectAtIndex:indexPath.row];
        destViewController.actualImage =[images objectAtIndex:indexPath.row];
    }
}
*/


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
