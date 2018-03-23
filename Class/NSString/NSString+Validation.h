//
//  NSString+Validation.h
//  Pods-DemoFoundationExt
//
//  Created by 顾吉涛 on 2018/3/23.
//

#import <Foundation/Foundation.h>

@interface NSString (Validation)

- (BOOL)isChinaMobile;

- (BOOL) isValidAlphaNumberPassword；

- (BOOL) isValidEmail;

- (BOOL) isValidNickName;

- (BOOL) isValidChineseID ;
@end
