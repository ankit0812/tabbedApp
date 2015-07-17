//
//  ThirdCollectionViewController.m
//  Tabbed_app_initial
//
//  Created by optimusmac-12 on 15/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "ThirdCollectionViewController.h"

@interface ThirdCollectionViewController ()

@end

@implementation ThirdCollectionViewController

{
    NSArray *image;
}


static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    image=[NSArray arrayWithObjects:@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png",@"9.png",@"10.png",@"11.png",@"12.png",@"13.png",@"14.png",@"15.png",@"16.png",@"17.png",@"18.png",@"19.png",@"20.png", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return noOfSection;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return noOfSection;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableidentify=@"SimpleTableCell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    UIImageView *imageView=(UIImageView *)[cell viewWithTag:100];
    imageView.image = [image objectAtIndex:
                             (indexPath.section * noOfSection + indexPath.row)];
    
    return cell;

    // Configure the cell
    if(cell==nil)
    {
        cell=[[UICollectionViewCell alloc] initWithCoder:UICollectionViewScrollPositionCenteredHorizontally reuseIdentifier:tableidentify];
    }
   
    cell.maskView.=[UIImage imageNamed:[image objectAtIndex:path.row]];
    

    return cell;
}

/*
 static NSString *tableidentify=@"SimpleTableCell";
 
 UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:tableidentify];
 
 if(cell==nil)
 {
 cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableidentify];
 }
 cell.textLabel.text=[title objectAtIndex:path.row];
 cell.imageView.image=[UIImage imageNamed:[image objectAtIndex:path.row]];
 
 return cell;
*/

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

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
