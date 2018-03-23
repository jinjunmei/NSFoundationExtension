//
//  NSString+Encode.h
//  Pods-DemoFoundationExt
//
//  Created by 顾吉涛 on 2018/3/23.
//

#import <Foundation/Foundation.h>

@interface NSString (Encode)


+ (NSString*)MD5Encode:(NSString*)str;

+ (NSString*)URLEncode:(NSString*)str;

+ (NSString*)URLDecoded:(NSString*)str;

@end
