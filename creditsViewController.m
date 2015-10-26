//
//  creditsViewController.m
//  Traffic
//
//  Created by Amrit Joyekurun on 2015-04-14.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "creditsViewController.h"


@interface creditsViewController ()


@property (strong, nonatomic) IBOutlet UIImageView *fbImgView;
@property (weak, nonatomic) IBOutlet UIImageView *twitter;
@property (weak, nonatomic) IBOutlet UIImageView *google;
@property (weak, nonatomic) IBOutlet UIImageView *linkin;
@property (weak, nonatomic) IBOutlet UIImageView *behance;
@property (weak, nonatomic) IBOutlet UIImageView *aj;

@end


@implementation creditsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.twitter.layer.cornerRadius = self.twitter.frame.size.width / 2;
    self.twitter.layer.borderWidth = 3.0f;
    self.twitter.layer.borderColor = [UIColor whiteColor].CGColor;
    self.twitter.clipsToBounds = YES;
    
    self.fbImgView.layer.cornerRadius = self.fbImgView.frame.size.width / 2;
    self.fbImgView.layer.borderWidth = 3.0f;
    self.fbImgView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.fbImgView.clipsToBounds = YES;
    
    self.google.layer.cornerRadius = self.google.frame.size.width / 2;
    self.google.layer.borderWidth = 3.0f;
    self.google.layer.borderColor = [UIColor whiteColor].CGColor;
    self.google.clipsToBounds = YES;
    
    self.linkin.layer.cornerRadius = self.linkin.frame.size.width / 2;
    self.linkin.layer.borderWidth = 3.0f;
    self.linkin.layer.borderColor = [UIColor whiteColor].CGColor;
    self.linkin.clipsToBounds = YES;
    
    self.behance.layer.cornerRadius = self.behance.frame.size.width / 2;
    self.behance.layer.borderWidth = 3.0f;
    self.behance.layer.borderColor = [UIColor whiteColor].CGColor;
    self.behance.clipsToBounds = YES;
    
    
    self.aj.layer.cornerRadius = self.aj.frame.size.width / 2;
    self.aj.layer.borderWidth = 3.0f;
    self.aj.layer.borderColor = [UIColor whiteColor].CGColor;
    self.aj.clipsToBounds = YES;

    
    
    
        [UIView animateWithDuration:1.0 animations:^(void) {
            self.fbImgView.transform = CGAffineTransformMakeScale(1.5, 1.5);
            self.twitter.transform = CGAffineTransformMakeScale(1.5, 1.5);
            self.google.transform = CGAffineTransformMakeScale(1.5, 1.5);
            self.behance.transform = CGAffineTransformMakeScale(1.5, 1.5);
            self.linkin.transform = CGAffineTransformMakeScale(1.5, 1.5);

        } completion:^(BOOL finished) {
            if(finished){
                [UIView animateWithDuration:1.0 animations:^(void) {
                    self.fbImgView.transform = CGAffineTransformMakeScale(1.0, 1.0);
                    self.twitter.transform = CGAffineTransformMakeScale(1.0, 1.0);
                    self.google.transform = CGAffineTransformMakeScale(1.0, 1.0);
                    self.behance.transform = CGAffineTransformMakeScale(1.0, 1.0);
                    self.linkin.transform = CGAffineTransformMakeScale(1.0, 1.0);

                }];
            }
        }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
