//
//  FirstViewController.m
//  tabbedApp
//
//  Created by optimusmac4 on 7/14/15.
//  Copyright (c) 2015 optimusmac4. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
{
    NSArray *names;                 // To get the table names
    NSArray *images;                // To get images names
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize table data
    names = [NSArray arrayWithObjects:@"Ankit", @"Menka", @"Abhishek Jha", @"Abhishek Gupta", @"Akshi Bansal", @"Naveta Grover", @"Darsheel", @"Mayank", @"Neha", @"Nikhil", @"Priyansha", @"Shreya", @"Vidushi", @"Ansari", @"Divyansh", @"Aashi", @"Apoorv", @"Adit", @"Aditya", nil];
    
    images = [NSArray arrayWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", @"7.jpg", @"8.jpg", @"9.jpg", @"10.jpg", @"11.jpg", @"12.jpg", @"13.jpg", @"14.jpg", @"15.jpg", @"16.jpg", @"17.jpg", @"18.jpg", @"19.jpg", @"19.jpg", nil];
    
    
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
    static NSString *TableIdentifier = @"NameCells";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableIdentifier];
    }
    
    cell.textLabel.text = [names objectAtIndex:indexPath.row];          //adding names to the rows
    cell.imageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]]; // Adding images to rows

    
    return cell;
}



@end

