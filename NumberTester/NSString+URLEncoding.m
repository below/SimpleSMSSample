//
//  NSString+URLEncoding.m
//  NumberTester
//
//  Created by Alexander v. Below on 19.11.12.
//  Copyright (c) 2012 Alexander v. Below. All rights reserved.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)
- (NSString *) URLEncodedString {

	CFStringRef preprocessedString = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault, (CFStringRef) self, CFSTR(""), kCFStringEncodingUTF8);
    NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                                             preprocessedString,
                                                                                             NULL,
                                                                                             CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                             kCFStringEncodingUTF8));
	CFRelease(preprocessedString);
	return result;	
}
@end
