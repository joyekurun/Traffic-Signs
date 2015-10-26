//
//  MyCustomTableViewCell.h
//  Traffic signs Ontario
//
//  Created by Amrit Joyekurun on 4/2/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

@property (strong, nonatomic) IBOutlet UILabel *refLabel;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end
