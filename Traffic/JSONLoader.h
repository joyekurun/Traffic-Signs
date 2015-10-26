//
//  JSONLoader.h
//  US_Presidents
//
//  Created by Amrit Joyekurun on 3/15/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^URLDataCompletionBlock)(NSData* data);

@interface JSONLoader : NSObject

@property (strong, nonatomic) NSURL *imageURL;

@property (strong, nonatomic) NSString* imageString;


// Return an array of Location objects from the json file at location given by url
- (NSArray *)warningFromJSONFile:(NSURL *)url;
- (NSArray *)regularFromJSONFile:(NSURL *)url;
- (NSArray *)tempFromJSONFile:(NSURL *)url;
- (NSArray *)customFromJSONFile:(NSURL *)url;


+ (void) getImageData:(NSString*)imageString completionBlock:(URLDataCompletionBlock)completion;


@end
