//
//  SignsViewController.m
//  Traffic
//
//  Created by Amrit Joyekurun on 4/5/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "SignsViewController.h"

@interface SignsViewController ()

@end

@implementation SignsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.regularImageView.layer.cornerRadius = self.regularImageView.frame.size.width / 2;
    self.regularImageView.layer.borderWidth = 3.0f;
    self.regularImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.regularImageView.clipsToBounds = YES;
    
    self.temporaryImageView.layer.cornerRadius = self.temporaryImageView.frame.size.width / 2;
    self.temporaryImageView.layer.borderWidth = 3.0f;
    self.temporaryImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.temporaryImageView.clipsToBounds = YES;
    
    self.warningImageView.layer.cornerRadius = self.warningImageView.frame.size.width / 2;
    self.warningImageView.layer.borderWidth = 3.0f;
    self.warningImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.warningImageView.clipsToBounds = YES;
    
    self.customImageView.layer.cornerRadius = self.customImageView.frame.size.width / 2;
    self.customImageView.layer.borderWidth = 3.0f;
    self.customImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.customImageView.clipsToBounds = YES;
    
    
    
    //Animate image
    
    [UIView animateWithDuration:0.5 animations:^(void) {
        self.warningImageView.transform = CGAffineTransformMakeScale(1.5, 1.5);
        self.regularImageView.transform = CGAffineTransformMakeScale(1.5, 1.5);
        self.temporaryImageView.transform = CGAffineTransformMakeScale(1.5, 1.5);
        self.customImageView.transform = CGAffineTransformMakeScale(1.5, 1.5);

    } completion:^(BOOL finished) {
        if(finished){
            [UIView animateWithDuration:0.5 animations:^(void) {
                self.warningImageView.transform = CGAffineTransformMakeScale(1.0, 1.0);
                self.regularImageView.transform = CGAffineTransformMakeScale(1.0, 1.0);
                self.temporaryImageView.transform = CGAffineTransformMakeScale(1.0, 1.0);
                self.customImageView.transform = CGAffineTransformMakeScale(1.0, 1.0);
                
            }];
        }
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
