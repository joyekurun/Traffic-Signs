//
//  List.h
//  US_Presidents
//
//  Created by Amrit Joyekurun on 3/15/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface List : NSObject

- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary;

@property (readonly) NSString *label;
@property (readonly) NSString *ref;
@property (readonly) NSString *des;
@property (readonly) NSString *imageURL;
@property (readonly) NSString *size;

@end
