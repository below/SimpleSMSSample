//
//  ViewController.m
//  NumberTester
//
//  Created by Alexander v. Below on 14.11.12.
//  Copyright (c) 2012 Alexander v. Below. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)send:(id)sender {
    
    NSString *number = self.numberField.text;
    
    NSString *strNumber = [[NSString alloc]initWithFormat:@"sms:%@",number];
    
    strNumber = [strNumber stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:strNumber]];

}
@end
