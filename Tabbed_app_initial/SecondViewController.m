//
//  SecondViewController.m
//  Tabbed_app_initial
//
//  Created by optimusmac-12 on 14/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
{
    NSArray *image;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    image=[NSArray arrayWithObjects:@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png",@"9.png",@"10.png",@"11.png",@"12.png",@"13.png",@"14.png",@"15.png",@"16.png",@"17.png",@"18.png",@"19.png",@"20.png", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionViewCell *)collectionView numberOfRowsInSection:(NSInteger)section
{
    return [image count];
}
/*
-(NSInteger)collectionView:(UICollectionViewCell *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [image count];
}

-(UICollectionViewCell *)collectionView:(UICollectionViewCell *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return 0;
}
*/

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *collectionidentifier=@"Collect";
    UICollectionViewCell *cell=(UICollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionidentifier forIndexPath:indexPath];
    
    if(cell==nil)
    {
        NSArray *nib=[[NSBundle mainBundle]loadNibNamed:@"Collect" owner:self options:nil];
        cell=[nib objectAtIndex:0];
    }
    //cell.image_1.image=[UIImage imageNamed:[image objectAtIndex:indexPath.row]];
    return cell;
}
@end
