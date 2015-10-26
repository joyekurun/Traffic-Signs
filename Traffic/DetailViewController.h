//
//  DetailViewController.h
//  Traffic signs Ontario
//
//  Created by Amrit Joyekurun on 4/1/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) List *warning;
@property (weak, nonatomic) List *regular;
@property (weak, nonatomic) List *temp;
@property (weak, nonatomic) List *custom;

@end
