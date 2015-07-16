//
//  SimpleTableCellTableViewCell.m
//  tabbedApp
//
//  Created by optimusmac4 on 7/15/15.
//  Copyright (c) 2015 optimusmac4. All rights reserved.
//

#import "SimpleTableCellTableViewCell.h"

@implementation SimpleTableCellTableViewCell

    @synthesize nameLabel = _nameLabel;
    @synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
