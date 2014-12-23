//
//  MessageSender.m
//  MezzoProt1
//
//  Created by Heejung Chung on 11/1/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "MessageSender.h"

@implementation MessageSender

- (BOOL)sendMessage:(Message *)message {
    message.dateSent = [NSDate date];
    // will eventually send message over network, but for now, just nslogs message
    NSLog(@"%@", message);
    return YES;
}

@end
