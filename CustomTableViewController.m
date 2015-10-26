//
//  CustomTableViewController.m
//  Traffic
//
//  Created by Amrit Joyekurun on 4/5/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "CustomTableViewController.h"
#import "MyCustomTableViewCell.h"
#import "JSONLoader.h"
#import "List.h"
#import "DetailViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray *_custom;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Create JSONLoader with a local file URL
    
    JSONLoader *jsonLoader = [[JSONLoader alloc] init];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"signs" withExtension:@"json"];
    
    // Load the data on a background queue...
    // As we are using a local file it's not really necessary, but if we were connecting to an online URL then we'd need it
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        _custom = [jsonLoader customFromJSONFile:url];
        
        // Now that we have the data, reload the table data on the main UI thread
        
        [self.tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:YES];
    });
}

// Just before showing the LocationDetailViewController, set the selected Location object

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *vc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    vc.custom = [_custom objectAtIndex:indexPath.row];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

#pragma mark - Table View Controller Methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell"];
    
    List *custom = [_custom objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = custom.label;
    cell.refLabel.text = custom.ref;
    
    [JSONLoader getImageData:custom.imageURL completionBlock:^(NSData* imageData)
     {
         dispatch_async(dispatch_get_main_queue(), ^
                        {	UIImage* image = [UIImage imageWithData:imageData];
                            cell.imageView.image = image;
                        });
     }];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_custom count];
}


@end
