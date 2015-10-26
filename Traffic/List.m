//
//  List.m
//  US_Presidents
//
//  Created by Amrit Joyekurun on 3/15/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import "List.h"

@implementation List


// Init the object with information from a dictionary
- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary {
    if(self = [self init]) {
        // Assign all properties with keyed values from the dictionary
        _label = [jsonDictionary objectForKey:@"label"];
        _ref = [jsonDictionary objectForKey:@"ref"];
        _des = [jsonDictionary objectForKey:@"des"];
        _imageURL = [jsonDictionary objectForKey:@"imageURL"];
        _size = [jsonDictionary objectForKey:@"size"];

        
    }
    
    return self;
}

@end
