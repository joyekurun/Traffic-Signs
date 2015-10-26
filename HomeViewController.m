//
//  HomeViewController.m
//  Traffic
//
//  Created by Amrit Joyekurun on 4/3/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *welcomeImgView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.welcomeImgView.layer.cornerRadius = self.welcomeImgView.frame.size.width / 2;
    self.welcomeImgView.layer.borderWidth = 3.0f;
    self.welcomeImgView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.welcomeImgView.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
