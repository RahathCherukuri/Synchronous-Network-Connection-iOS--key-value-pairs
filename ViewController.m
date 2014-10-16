//
//  ViewController.m
//  SynchronousNetwork
//
//  Created by rahath on 10/16/14.
//  Copyright (c) 2014 Green. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self login];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)login
{
    NSString * str;
    NSString * UserName = @"user1";
    NSString * password = @"password1";
    str = [NSString stringWithFormat:@"&username=%@&password=%@",UserName,password];
    
    //Data that you are sending along with NSASCIIStringEncoding
    NSData *postData = [str dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
    //Setting the request attributes
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    NSString *path = @"http://www.abc.com/def";
    [request setURL:[NSURL URLWithString:path]];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:postData];
    
    NSURLResponse* response;
    NSError* error = nil;
    NSData* result = [NSURLConnection sendSynchronousRequest:request  returningResponse:&response error:&error];
    if(error != Nil)
    {
        NSLog(@"%@",result);
        //Converting the NSData to NSString
        NSString* newStr = [[NSString alloc] initWithData:result encoding:NSUTF8StringEncoding];
        NSLog(@"%@",newStr);
    }
    else
    {
        NSLog(@"%@",[error localizedDescription]);
    }
}
@end
