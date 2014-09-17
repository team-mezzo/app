//
//  Donation.h
//  MessagingFeature
//
//  Created by Heejung Chung on 4/24/14.
//  Copyright (c) 2014 Heejung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodPortion.h"
#import "Stakeholder.h"

@interface Donation : NSObject

//description
@property (strong, nonatomic) FoodPortion *foodPortion;
@property (strong, nonatomic) NSDate *dateOfPickup; //includes time
@property (strong, nonatomic) Stakeholder *donor;
@property (strong, nonatomic) Stakeholder *recipient;

//status
@property (strong, nonatomic) NSDictionary *statusStages; //
@property (strong, nonatomic) NSString *status;
//STAGES-- uninitiated, donationAcceptedByOrg, driverLeftOrg, driverArrivedAtDonor, donationComplete

- (NSArray *)requiredInfo;

@end
