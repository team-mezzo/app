//
//  NSDictionary+Donation.m
//  MezzoProt1
//
//  Created by Heejung Chung on 12/22/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "NSDictionary+Donation.h"

@implementation NSDictionary (Donation)

- (NSArray *)listDonations {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (id object in self[@"current_donations"]) {
        Donation *donation = [[Donation alloc] init];
        donation.ID = object[@"id"];
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH':'mm':'ss'.'SSS'Z'"];
        donation.dateOfPickup = [dateFormatter dateFromString:object[@"pickup_start"]];
        
        donation.status = object[@"status"];
        
        [donation setFoodPortionWithDescr:object[@"food_portion"][@"description"]
                                      raw:object[@"food_portion"][@"raw_amount"]
                                processed:object[@"food_portion"][@"processed_amount"]];
        [array addObject:donation];
    }
    
    return array;
}

@end
