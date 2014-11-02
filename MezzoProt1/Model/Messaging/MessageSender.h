//
//  MessageSender.h
//  MezzoProt1
//
//  Created by Heejung Chung on 11/1/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

@interface MessageSender : NSObject

- (BOOL)sendMessage:(Message *)message; // returns whether message send is successful

@end
