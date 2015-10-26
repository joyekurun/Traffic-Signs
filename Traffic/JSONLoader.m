//
//  JSONLoader.m
//  Traffic Signs
//
//  Created by Amrit Joyekurun on 3/15/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "JSONLoader.h"
#import "List.h"

@implementation JSONLoader

- (NSArray *)warningFromJSONFile:(NSURL *)url {
    // Create a NSURLRequest with the given URL
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                         timeoutInterval:30.0];
    
    // Get the data
    NSURLResponse *response;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    
    // Now create a NSDictionary from the JSON data
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    
    NSMutableArray *warning = [[NSMutableArray alloc] init];
    
    // Get an array of dictionaries with the key "items"
    
    NSArray *array = [jsonDictionary objectForKey:@"warning"];
    
    // Iterate through the array of dictionaries
    
    for(NSDictionary *dict in array) {
        
        // Create a new Location object for each one and initialise it with information in the dictionary
        
        List *location = [[List alloc] initWithJSONDictionary:dict];
        
        // Add the Location object to the array
        [warning addObject:location];
    }
    
    // Return the array
    return warning;
    
}


- (NSArray *)regularFromJSONFile:(NSURL *)url {
    // Create a NSURLRequest with the given URL
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                         timeoutInterval:30.0];
    
    // Get the data
    NSURLResponse *response;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    
    // Now create a NSDictionary from the JSON data
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    
    NSMutableArray *regular = [[NSMutableArray alloc] init];
    
    // Get an array of dictionaries with the key "items"
    
    NSArray *array = [jsonDictionary objectForKey:@"regular"];
    
    // Iterate through the array of dictionaries
    
    for(NSDictionary *dict in array) {
        
        // Create a new Location object for each one and initialise it with information in the dictionary
        
        List *location = [[List alloc] initWithJSONDictionary:dict];
        
        // Add the Location object to the array
        [regular addObject:location];
    }
    
    // Return the array
    return regular;
    
}

- (NSArray *)tempFromJSONFile:(NSURL *)url {
    // Create a NSURLRequest with the given URL
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                         timeoutInterval:30.0];
    
    // Get the data
    NSURLResponse *response;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    
    // Now create a NSDictionary from the JSON data
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    
    NSMutableArray *temp = [[NSMutableArray alloc] init];
    
    // Get an array of dictionaries with the key "items"
    
    NSArray *array = [jsonDictionary objectForKey:@"temp"];
    
    // Iterate through the array of dictionaries
    
    for(NSDictionary *dict in array) {
        
        // Create a new Location object for each one and initialise it with information in the dictionary
        
        List *location = [[List alloc] initWithJSONDictionary:dict];
        
        // Add the Location object to the array
        [temp addObject:location];
    }
    
    // Return the array
    return temp;
    
}


- (NSArray *)customFromJSONFile:(NSURL *)url {
    // Create a NSURLRequest with the given URL
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                                         timeoutInterval:30.0];
    
    // Get the data
    NSURLResponse *response;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    
    // Now create a NSDictionary from the JSON data
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    
    NSMutableArray *custom = [[NSMutableArray alloc] init];
    
    // Get an array of dictionaries with the key "items"
    
    NSArray *array = [jsonDictionary objectForKey:@"custom"];
    
    // Iterate through the array of dictionaries
    
    for(NSDictionary *dict in array) {
        
        // Create a new Location object for each one and initialise it with information in the dictionary
        
        List *location = [[List alloc] initWithJSONDictionary:dict];
        
        // Add the Location object to the array
        [custom addObject:location];
    }
    
    // Return the array
    return custom;
    
}


+ (void) getImageData:(NSString*)imageString completionBlock:(URLDataCompletionBlock)completion
{
    NSString* urlString = [NSString stringWithFormat:@"%@" , imageString];
    NSURL* url = [[NSURL alloc] initWithString:urlString];
    NSURLSession* session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask * dataTask = [session dataTaskWithURL:url
                                             completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
                                       {
                                           if (error == nil)
                                           {	completion(data);
                                           }
                                       }
                                       ];
    
    [dataTask resume];	
}



@end
