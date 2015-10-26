//
//  DetailViewController.m
//  Traffic signs Ontario
//
//  Created by Amrit Joyekurun on 4/1/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "DetailViewController.h"
#import "JSONLoader.h"

@interface DetailViewController ()


@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UILabel *partyLabel;

@property (strong, nonatomic) IBOutlet UILabel *regularDescLabel;
@property (strong, nonatomic) IBOutlet UILabel *regularNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *regularRefLabel;
@property (strong, nonatomic) IBOutlet UILabel *regularSizeLabel;


@property (strong, nonatomic) IBOutlet UILabel *warningDescLabel;
@property (strong, nonatomic) IBOutlet UILabel *warningNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *warningRefLabel;
@property (strong, nonatomic) IBOutlet UILabel *warningSizeLabel;

@property (strong, nonatomic) IBOutlet UILabel *customDescLabel;
@property (strong, nonatomic) IBOutlet UILabel *customNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *customRefLabel;
@property (strong, nonatomic) IBOutlet UILabel *customSizeLabel;

@property (strong, nonatomic) IBOutlet UILabel *tempDescLabel;
@property (strong, nonatomic) IBOutlet UILabel *tempNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *tempRefLabel;
@property (strong, nonatomic) IBOutlet UILabel *tempSizeLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.regular.label;
//    self.title = self.warning.label;
//    self.title = self.temp.label;
//    self.title = self.custom.label;

    // Do any additional setup after loading the view.
    
    self.partyLabel.text = self.warning.label;
    
    // detail view for regular signs
    self.regularDescLabel.text = self.regular.des;
    self.regularNameLabel.text = self.regular.label;
    self.regularRefLabel.text = self.regular.ref;
    self.regularSizeLabel.text = self.regular.size;
    
    // detail view for warning signs
    self.warningDescLabel.text = self.warning.des;
    self.warningNameLabel.text = self.warning.label;
    self.warningRefLabel.text = self.warning.ref;
    self.warningSizeLabel.text = self.warning.size;
    
    
    // detail view for warning signs
    self.customDescLabel.text = self.custom.des;
    self.customNameLabel.text = self.custom.label;
    self.customRefLabel.text = self.custom.ref;
    self.customSizeLabel.text = self.custom.size;
    
    
    // detail view for warning signs
    self.tempDescLabel.text = self.temp.des;
    self.tempNameLabel.text = self.temp.label;
    self.tempRefLabel.text = self.temp.ref;
    self.tempSizeLabel.text = self.temp.size;

    
    
    self.imgView.layer.cornerRadius = self.imgView.frame.size.width / 2;
    self.imgView.layer.borderWidth = 2.0f;
    self.imgView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imgView.clipsToBounds = YES;



[JSONLoader getImageData:self.warning.imageURL completionBlock:^(NSData* imageData)
 {
     dispatch_async(dispatch_get_main_queue(), ^
                    {	UIImage* image = [UIImage imageWithData:imageData];
                        self.imgView.image = image;
                    });
 }];
    
    [JSONLoader getImageData:self.regular.imageURL completionBlock:^(NSData* imageData)
     {
         dispatch_async(dispatch_get_main_queue(), ^
                        {	UIImage* image = [UIImage imageWithData:imageData];
                            self.imgView.image = image;
                        });
     }];
    [JSONLoader getImageData:self.temp.imageURL completionBlock:^(NSData* imageData)
     {
         dispatch_async(dispatch_get_main_queue(), ^
                        {	UIImage* image = [UIImage imageWithData:imageData];
                            self.imgView.image = image;
                        });
     }];
    
    [JSONLoader getImageData:self.custom.imageURL completionBlock:^(NSData* imageData)
     {
         dispatch_async(dispatch_get_main_queue(), ^
                        {	UIImage* image = [UIImage imageWithData:imageData];
                            self.imgView.image = image;
                            
                            });
     }];
    
    
    
    //animation
    
    self.imgView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    
    
    [self.view addSubview:self.imgView];
    
    [UIView animateWithDuration:0.3/1.5 animations:^{
        self.imgView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            self.imgView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                self.imgView.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
