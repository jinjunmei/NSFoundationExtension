//
//  NSString+Encode.m
//  Pods-DemoFoundationExt
//
//  Created by 顾吉涛 on 2018/3/23.
//

#import "NSString+Encode.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Encode)

+ (NSString*)MD5Encode:(NSString*)str {
    const char *cStr = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15] ];
}

+ (NSString*)URLEncode:(NSString*)str {
    if (![str isKindOfClass:[NSString class]]) {
        str = [str description];
    }
    return (NSString *) CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)[str mutableCopy], NULL, CFSTR("￼=,!$&'()*+;@?\n\"<>#\t :/"),kCFStringEncodingUTF8));
}

+ (NSString*)URLDecoded:(NSString*)str {
    NSString *result = (NSString *)
    CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault,
                                                                              (CFStringRef)str,
                                                                              CFSTR(""),
                                                                              kCFStringEncodingUTF8));
    return result;
}

@end
