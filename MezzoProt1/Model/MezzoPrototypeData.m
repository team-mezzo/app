//
//  MezzoPrototypeData.m
//  MezzoProt1
//
//  Created by Heejung Chung on 7/2/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "MezzoPrototypeData.h"

@implementation MezzoPrototypeData

+ (NSMutableArray *)listOfPrototypeOrgs
{
    NSMutableArray *orgs = [[NSMutableArray alloc] init];
    
    [orgs addObject:[[Stakeholder alloc] initWithBusinessName:@"Second Harvest"
                                                  managerName:@"Yon"
                                                  phoneNumber:@"4088078684"]];
    
    [orgs addObject:[[Stakeholder alloc] initWithBusinessName:@"Village Harvest"
                                                  managerName:@"Feei"
                                                  phoneNumber:@"4088078683"]];
    
    [orgs addObject:[[Stakeholder alloc] initWithBusinessName:@"St. Anthony's"
                                                  managerName:@"Claire"
                                                  phoneNumber:@"6506781642"]];
    
    [orgs addObject:[[Stakeholder alloc] initWithBusinessName:@"EHP"
                                                  managerName:@"Minhee"
                                                  phoneNumber:@"4082197976"]];
    
    return orgs;
}

/*+ (Stakeholder *)stakeholderInArray:(NSArray *)array withName:(NSString *)name
{
    Stakeholder *stakeholder = [[Stakeholder alloc] init];
#warning need to implement
    return stakeholder;
}*/

@end
