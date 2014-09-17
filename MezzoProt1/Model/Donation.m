//
//  Donation.m
//  MessagingFeature
//
//  Created by Heejung Chung on 4/24/14.
//  Copyright (c) 2014 Heejung. All rights reserved.
//

#import "Donation.h"

@implementation Donation

//lazy instantiations:

- (FoodPortion *)foodPortion
{
    if (!_foodPortion) _foodPortion = [[FoodPortion alloc] init];
    return _foodPortion;
}

- (NSDate *)dateOfPickup
{
    if (!_dateOfPickup) _dateOfPickup = [NSDate date];
    return _dateOfPickup;
}

- (Stakeholder *)donor
{
    if (!_donor) _donor = [[Stakeholder alloc] init];
    return _donor;
}

- (Stakeholder *)recipient
{
    if (!_recipient) _recipient = [[Stakeholder alloc] init];
    return _recipient;
}

- (NSDictionary *)statusStages
{
    if (!_statusStages) _statusStages = [[NSDictionary alloc] initWithObjectsAndKeys:[UIColor lightGrayColor],
                                         @"uninitiated",
                                         [UIColor darkGrayColor], @"donationAcceptedByOrg",
                                         [UIColor orangeColor], @"driverLeftOrg",
                                         [UIColor yellowColor], @"driverArrivedAtDonor",
                                         [UIColor greenColor], @"donationComplete", nil];
    return _statusStages;
}

@synthesize status = _status;

- (void)setStatus:(NSString *)status
{
    NSArray *stages = [self.statusStages allKeys];
    
    for (int i = 0; i < [stages count]; i++) {
        if ([status isEqualToString:stages[i]]) status = stages[i];
    }
}

- (NSString *)status
{
    if (!_status) _status = @"uninitiated";
    return _status;
}

- (NSString *)description
{
    return (!self.dateOfPickup) ? [NSString stringWithFormat:@"%@\n", self.foodPortion] : [NSString stringWithFormat:@"%@\nDate of Pickup: %@", self.foodPortion, self.dateOfPickup];
    //Date of Pickup: %@ .... , self.dateOfPickup
}

- (NSArray *)requiredInfo
{
    return @[self.foodPortion.rawAmtInlbs, self.foodPortion.processedAmtInlbs, self.dateOfPickup, self.recipient, self.donor];
}

@end
