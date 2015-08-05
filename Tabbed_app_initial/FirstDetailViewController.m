//
//  FirstDetailViewController.m
//  Tabbed_app_initial
//
//  Created by optimusmac4 on 7/15/15.
//  Copyright (c) 2015 optimusmac4. All rights reserved.
//


#import "FirstDetailViewController.h"

@interface FirstDetailViewController ()

@end

@implementation FirstDetailViewController

@synthesize nameLabel;
@synthesize thumbnailImageView;
@synthesize actualName;
@synthesize actualImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Set the Label text with the selected recipe
    nameLabel.text=actualName;
    
    thumbnailImageView.image=[UIImage imageNamed:actualImage];
    
    
    //thumbnailImageView=[thumbnailImageView.image scaleToSize:CGSizeMake(100.0f,100.0f)]
 }


- (void)didReceiveMemoryWarning
{
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

@end