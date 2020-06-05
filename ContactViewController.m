//
//  ContactViewController.m
//  Traffic
//
//  Created by Amrit Joyekurun on 4/7/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "ContactViewController.h"


@interface ContactViewController () <MKMapViewDelegate>


@property (strong, nonatomic) IBOutlet UIImageView *call;


@end

@implementation ContactViewController

@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mapView.delegate = self;
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    annotation.coordinate = CLLocationCoordinate2DMake(43.716, -79.577);
    CLLocationCoordinate2D Location = CLLocationCoordinate2DMake(43.716, -79.577);
    self.mapView.region = MKCoordinateRegionMakeWithDistance(Location, 2500, 2500);
    
    [self.mapView addAnnotation:annotation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    // Don't create annotation views for the user location annotation
    if ([annotation isKindOfClass:[MKPointAnnotation class]])
    {
        static NSString *draggableAnnotationId = @"draggableAnnotation";
        
        // Create an annotation view, but reuse a cached one if available
        MKPinAnnotationView *annotationView =
        (MKPinAnnotationView *)[self.mapView
                                dequeueReusableAnnotationViewWithIdentifier:draggableAnnotationId];
        if(annotationView)
        {
            // Cached view found, associate it with the annotation
            annotationView.annotation = annotation;
        }
        else
        {
            // No cached view were available, create a new one
            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation
                                                             reuseIdentifier:draggableAnnotationId];
            annotationView.draggable = YES;
        }
        
        return annotationView;
    }
    
    // Use a default annotation view for the user location annotation
    return nil;
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState
{
    if (newState == MKAnnotationViewDragStateEnding)
    {
        MKPointAnnotation *annotation = view.annotation;
        NSLog(@"\nPin Location: %f, %f (Lat, Long)", annotation.coordinate.latitude, view.annotation.coordinate.longitude);
    }
    
}

// website link
- (IBAction)webLinkBtn:(id)sender {
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"Http://www.continentaldecal.com"]];
}

// phone calling enable
- (IBAction)phoneBTn:(id)sender {
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"tel:6472000147"]];
}

// sms enable

- (IBAction)smsBtn:(id)sender {
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"sms:"]];
}

// email composer button

- (IBAction)emailBtn:(id)sender

{
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc]init];
    [composer setMailComposeDelegate:self];
    NSString *email = @"info@continentaldecal.com";
    NSArray *emailArray = [[NSArray alloc] initWithObjects:email, nil];
    [composer setToRecipients:emailArray];
    [composer setSubject:@"Traffic Signs"];
    [self presentViewController:composer animated:YES completion:nil];
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error;
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
