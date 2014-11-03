//
//  SendMessageViewController.m
//  MezzoProt1
//
//  Created by Heejung Chung on 11/1/14.
//  Copyright (c) 2014 Mezzo. All rights reserved.
//

#import "SendMessageViewController.h"

@interface SendMessageViewController ()

@property (weak, nonatomic) IBOutlet UITextView *messageContentTextView;

@end

@implementation SendMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sendMessageButton:(id)sender {
    Message *message = [Message messageWithContent:self.messageContentTextView.text];
    
    MessageSender *mSender = [[MessageSender alloc] init];
    [mSender sendMessage:message];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
