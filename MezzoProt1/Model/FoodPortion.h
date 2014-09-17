//
//  FoodPortion.h
//  MessagingFeature
//
//  Created by Heejung Chung on 4/24/14.
//  Copyright (c) 2014 Heejung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodPortion : NSObject

@property (nonatomic) NSNumber *rawAmtInlbs;
@property (nonatomic) NSNumber *processedAmtInlbs;
@property (strong, nonatomic) NSString *foodDescription;

@end
