//
//  NSObject+ModelCache.m
//  NSFoundationExtension
//
//  Created by gus on 2018/5/19.
//

#import "NSObject+ModelCache.h"
#import <objc/runtime.h>


@implementation NSObject (ModelCache)

- (void)saveToCache:(Class)class {
    
    NSAssert([self conformsToProtocol:@protocol(NSCoding)], @"Only works for NSCoding");
    NSUserDefaults *userDefulat = [NSObject objectCacheModelDefault];
    NSString *modelKey = NSStringFromClass(class);
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self];
    [userDefulat setObject:data forKey:modelKey];
}

+ (void)saveToCache:(NSObject<NSCopying> *)model {
    NSAssert([model conformsToProtocol:@protocol(NSCoding)], @"Only works for NSCoding");
    NSUserDefaults *userDefulat = [NSObject objectCacheModelDefault];
    NSString *modelKey = NSStringFromClass([model class]);
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:model];
    [userDefulat setObject:data forKey:modelKey];
}

+ (NSObject *)modelFromCache {
    
    NSAssert([self conformsToProtocol:@protocol(NSCoding)], @"Only works for NSCoding");
    NSUserDefaults *userDefulat = [NSObject objectCacheModelDefault];
    NSString *cacheKey = NSStringFromClass([self class]);
    NSData* data = [userDefulat objectForKey:cacheKey];
    NSObject* model = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    return model;
}

+ (NSUserDefaults *)objectCacheModelDefault {
    
    NSString *bundleID =[[NSBundle mainBundle] bundleIdentifier];
    NSString *suiteName = [NSString  stringWithFormat:@"%@_%@",bundleID,@"NSObject(ModelCache)"];
    if (@available(iOS 7.0, *)) {
        NSUserDefaults *userDefault = [[NSUserDefaults alloc] initWithSuiteName:suiteName];
        return userDefault;
    } else {
        return nil;
    }
}



@end
