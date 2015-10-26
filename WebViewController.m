//
//  WebViewController.m
//  Traffic
//
//  Created by Amrit Joyekurun on 2015-04-16.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *url = [[NSURL alloc] initWithString:@"http://continentaldecal.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    self.webView.scalesPageToFit = YES;
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
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
