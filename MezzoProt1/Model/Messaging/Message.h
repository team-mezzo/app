//
//  Message.h
//  MezzoProt1
//
//  Created by Heejung Chung on 11/1/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Donation.h"

@interface Message : NSObject

@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSDate *dateSent;

@property (strong, nonatomic) Stakeholder *sender;
@property (strong, nonatomic) Stakeholder *receiver;

+ (Message *)messageWithContent:(NSString *)content;
+ (Message *)messageWithContent:(NSString *)content Sender:(Stakeholder *)sender Receiver:(Stakeholder *)receiver;

@end
