//
//  Map.h
//  US_Presidents
//
//  Created by Amrit Joyekurun on 3/16/15.
//  Copyright (c) 2015 Amrit Joyekurun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Map : NSObject<MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *label;
@property (nonatomic, copy) NSString *subtitle;

@end
