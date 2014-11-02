//
//  Message.m
//  MezzoProt1
//
//  Created by Heejung Chung on 11/1/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "Message.h"

@implementation Message

- (NSString *)content {
    if (!_content) {
        _content = [[NSString alloc] init];
    }
    return _content;
}

- (NSDate *)dateSent {
    if (!_dateSent) {
        _dateSent = [[NSDate alloc] init];
    }
    return _dateSent;
}

- (Stakeholder *)sender {
    if (!_sender) {
        _sender = [[Stakeholder alloc] init];
    }
    return _sender;
}

- (Stakeholder *)receiver {
    if (!_receiver) {
        _receiver = [[Stakeholder alloc] init];
    }
    return _receiver;
}


@end
