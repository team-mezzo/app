//
//  DonationDownloader.m
//  MezzoProt1
//
//  Created by Heejung Chung on 12/22/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "DonationDownloader.h"

@implementation DonationDownloader

static NSString * const baseURLString = @"INSERT URL";

- (Donation *)donation {
    if (!_donation) { _donation = [[Donation alloc] init]; }
    return _donation;
}

- (void)downloadFromURLString:(NSString *)urlString {
    NSURL *baseURL = [NSURL URLWithString:baseURLString];
    NSDictionary *parameters = @{@"format" : @"json"};
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
#warning add key below
    [manager GET:urlString parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary *dict = (NSDictionary *)responseObject;
        self.donation = [dict donation];
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Donation(s)"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
}

- (void)loadFromJSONFile {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"donation" ofType:@"json"];
    NSData *donationData = [NSData dataWithContentsOfFile:filePath
                                                  options:NSDataReadingMappedIfSafe
                                                    error:nil];
    
    NSDictionary *donationDict = [NSJSONSerialization JSONObjectWithData:donationData
                                                                 options:NSJSONReadingAllowFragments
                                                                   error:nil];
    
    self.donation = [donationDict donation];
}


@end
