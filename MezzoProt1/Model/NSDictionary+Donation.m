//
//  NSDictionary+Donation.m
//  MezzoProt1
//
//  Created by Heejung Chung on 12/22/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "NSDictionary+Donation.h"

@implementation NSDictionary (Donation)

- (NSArray *)donation {
    //NSMutableArray *array = [[NSMutableArray alloc] init];
    
    //for (id object in self[@"current_donations"]) {
        Donation *donation = [[Donation alloc] init];
        donation.ID = self[@"id"];
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH':'mm':'ss'.'SSS'Z'"];
        donation.dateOfPickup = [dateFormatter dateFromString:self[@"pickup_start"]];
        donation.status = self[@"status"];
        NSLog(@"%@, %@", self[@"status"], [self[@"status"] class]);
        
        [donation setFoodPortionWithDescr:self[@"food_portion"][@"description"] raw:self[@"food_portion"][@"raw_amount"] processed:self[@"food_portion"][@"processed_amount"]];
    //}
    
    return donation;
}

@end
