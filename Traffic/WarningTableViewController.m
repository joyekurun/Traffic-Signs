//
//  WarningTableViewController.m
//  Traffic signs Ontario
//
//  Created by Amrit Joyekurun on 4/1/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "WarningTableViewController.h"
#import "MyCustomTableViewCell.h"
#import "JSONLoader.h"
#import "List.h"
#import "DetailViewController.h"

@interface WarningTableViewController ()

@end

@implementation WarningTableViewController

{
    NSArray *_warning;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Create a new JSONLoader with a local file URL
    
    JSONLoader *jsonLoader = [[JSONLoader alloc] init];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"signs" withExtension:@"json"];
    
    // Load the data on a background queue...
    // As we are using a local file it's not really necessary, but if we were connecting to an online URL then we'd need it
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        _warning = [jsonLoader warningFromJSONFile:url];
        
        // Now that we have the data, reload the table data on the main UI thread
        
        [self.tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:YES];
    });
}

// Just before showing the LocationDetailViewController, set the selected Location object

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *vc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    vc.warning = [_warning objectAtIndex:indexPath.row];
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
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WarningCell"];
    
    List *warning = [_warning objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = warning.label;
    cell.refLabel.text = warning.ref;
    
    [JSONLoader getImageData:warning.imageURL completionBlock:^(NSData* imageData)
     {
         dispatch_async(dispatch_get_main_queue(), ^
                        {	UIImage* image = [UIImage imageWithData:imageData];
                            cell.imageView.image = image;
                        });
     }];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_warning count];
}

@end
