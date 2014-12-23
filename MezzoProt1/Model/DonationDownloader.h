//
//  DonationDownloader.h
//  MezzoProt1
//
//  Created by Heejung Chung on 12/22/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+Donation.h"

@interface DonationDownloader : NSObject

@property (strong, nonatomic) Donation *donation;

- (void)downloadFromURLString:(NSString *)urlString;

@end
