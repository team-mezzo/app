//
//  FoodPortion.m
//  MessagingFeature
//
//  Created by Heejung Chung on 4/24/14.
//  Copyright (c) 2014 Heejung. All rights reserved.
//

#import "FoodPortion.h"

@implementation FoodPortion

//lazy instantiations:
- (NSNumber *)rawAmtInlbs
{
    if (!_rawAmtInlbs) { _rawAmtInlbs = [[NSNumber alloc] init]; }
    return _rawAmtInlbs;
}

- (NSNumber *)processedAmtInlbs
{
    if (!_processedAmtInlbs) { _processedAmtInlbs = [[NSNumber alloc] init]; }
    return _processedAmtInlbs;
}

- (NSString *)foodDescription
{
    if (!_foodDescription) { _foodDescription = [[NSString alloc] init]; }
    return _foodDescription;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Amount of Raw Food: %@\nAmount of Processed Food: %@\nDescription: %@", self.rawAmtInlbs, self.processedAmtInlbs, self.foodDescription];
}

@end
