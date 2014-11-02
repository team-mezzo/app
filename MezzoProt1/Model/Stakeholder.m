//
//  Stakeholder.m
//  MessagingFeature
//
//  Created by Heejung Chung on 4/25/14.
//  Copyright (c) 2014 Heejung. All rights reserved.
//

#import "Stakeholder.h"

@implementation Stakeholder

#pragma mark - Properties

- (NSString *)businessName
{
    if (!_businessName) { _businessName = [[NSString alloc]init]; }
        return _businessName;
}

- (NSString *)managerName
{
    if (!_managerName) { _managerName = [[NSString alloc] init]; }
        return _managerName;
}

- (NSString *)emailAddress
{
    if (!_emailAddress) { _emailAddress = [[NSString alloc]init]; }
        return _managerName;
}

- (NSString *)phoneNumber
{
    if (!_phoneNumber) { _phoneNumber = [[NSString alloc] init]; }
        return _phoneNumber;
}

- (NSMutableArray *)friends
{
    if (!_friends) { _friends = [[NSMutableArray alloc] init]; }
        return _friends;
}

- (UIImage *)image
{
    if (!_image) { _image = [[UIImage alloc] init]; }
    return _image;
}

#pragma mark - Initialization

- (instancetype)initWithBusinessName:(NSString *)bname managerName:(NSString *)mname phoneNumber:(NSString *)phoneNum
{
    self = [super init];
    
    if (self) {
        self.businessName = bname;
        self.managerName = mname;
        self.phoneNumber = phoneNum;
    }
    
    return  self;
}


- (NSString *)description
{
    return (!self.businessName) ? [NSString stringWithFormat:@"%@", self.managerName] :[NSString stringWithFormat:@"%@ from %@", self.managerName, self.businessName];
}

@end
