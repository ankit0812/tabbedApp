//
//  FirstViewController.m
//  Tabbed_app_initial
//
//  Created by optimusmac4 on 7/15/15.
//  Copyright (c) 2015 optimusmac4. All rights reserved.
//

#import "FirstViewController.h"
#import "SimpleTableCell.h"
#import "FirstDetailViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
{
    NSArray *images;
    NSArray *names;                 // To get the table names
    // To get images names
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize table data
    images = [NSArray arrayWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg", @"9.jpg", @"10.jpg", @"11.jpg", @"12.jpg", @"13.jpg", @"14.jpg", @"15.jpg", @"16.jpg", @"17.jpg", @"18.jpg", @"19.jpg", @"20.jpg", nil];
    
    names = [NSArray arrayWithObjects:@"Ankit", @"Menka", @"Abhishek Jha", @"Abhishek Roy", @"Akshi ", @"Naveta Dey", @"Darsheel", @"Mayank", @"Neha", @"Nikhil", @"Priyansha", @"Shreya", @"Vidushi", @"Ansari", @"Divyansh", @"Aashi", @"Apoorv", @"Adit", @"Aditya", @"Taha", nil];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [names count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [names objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    return cell;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showNamesDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        FirstDetailViewController *destViewController = segue.destinationViewController;
        destViewController.actualName = [names objectAtIndex:indexPath.row];
        destViewController.actualImage =[images objectAtIndex:indexPath.row];
    }
}

/*- (IBAction)aboutUs:(id)sender {
    
    // Nothing to be done here

}*/
@end


/*-(UIImage*)resizeImage:(UIImage *)image imageSize:(CGSize)size
 {
 UIGraphicsBeginImageContext(size);
 [image drawInRect:CGRectMake(0,0,size.width,size.height)];
 UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
 //here is the scaled image which has been changed to the size specified
 UIGraphicsEndImageContext();
 return newImage;
 
 }*/


