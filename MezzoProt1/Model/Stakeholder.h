//
//  Stakeholder.h
//  MessagingFeature
//
//  Created by Heejung Chung on 4/25/14.
//  Copyright (c) 2014 Heejung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stakeholder : NSObject

- (instancetype)initWithBusinessName:(NSString *)bname managerName:(NSString *)mname phoneNumber:(NSString *)phoneNum;

@property (strong, nonatomic) NSString *businessName;
@property (strong, nonatomic) NSString *managerName;
@property (strong, nonatomic) NSString *emailAddress;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSMutableArray *friends; // of other stakeholders
@property (strong, nonatomic) UIImage *image;
@property (nonatomic) BOOL isDonor; //YES if donor, NO if recipient

@end
