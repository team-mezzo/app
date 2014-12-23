//
//  NSDictionary+Donation.m
//  MezzoProt1
//
//  Created by Heejung Chung on 12/22/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "NSDictionary+Donation.h"

@implementation NSDictionary (Donation)

- (Donation *)donation {
    Donation *donation = [[Donation alloc] init];
    donation.ID = self[@"id"];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
    donation.dateOfPickup = [dateFormatter dateFromString:self[@"pickup_start"]];
    donation.status = self[@"status"];
    
    NSString *description = self[@"food_portion"][@"description"];
    NSNumber *rawNum = [NSNumber numberWithInt:(int)self[@"raw_amount"]];
    NSNumber *processedNum = [NSNumber numberWithInt:(int)self[@"processed_amount"]];
    [donation setFoodPortionWithDescr:description raw:rawNum processed:processedNum];
    
    return donation;
}

@end
