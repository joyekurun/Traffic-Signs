//
//  MyCustomTableViewCell.m
//  Traffic signs Ontario
//
//  Created by Amrit Joyekurun on 4/2/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@implementation MyCustomTableViewCell

@synthesize nameLabel;
@synthesize refLabel;
@synthesize imageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
