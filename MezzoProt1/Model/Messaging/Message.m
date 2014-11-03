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
        _sender.businessName = @"self";
    }
    return _sender;
}

- (Stakeholder *)receiver {
    if (!_receiver) {
        _receiver = [[Stakeholder alloc] init];
        _receiver.businessName = @"some person";
    }
    return _receiver;
}


+ (Message *)messageWithContent:(NSString *)content {
    Message *message = [[Message alloc] init];
    message.content = content;
    return message;
}


+ (Message *)messageWithContent:(NSString *)content Sender:(Stakeholder *)sender Receiver:(Stakeholder *)receiver {
    Message *message = [Message messageWithContent:content];
    message.sender = sender;
    message.receiver = receiver;
    return message;
}

- (NSString *)description {
    NSString *ret = [NSString stringWithFormat:@"Sent on: %@\nSender: %@\nReceiver: %@\nContent: %@", self.dateSent, self.sender, self.receiver, self.content];
    return ret;
}

@end
