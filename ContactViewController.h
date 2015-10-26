//
//  ContactViewController.h
//  Traffic
//
//  Created by Amrit Joyekurun on 4/7/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>
#import <MapKit/MapKit.h>

@interface ContactViewController : ViewController <MFMailComposeViewControllerDelegate>

- (IBAction)webLinkBtn:(id)sender;

- (IBAction)phoneBTn:(id)sender;

- (IBAction)smsBtn:(id)sender;

- (IBAction)emailBtn:(id)sender;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
