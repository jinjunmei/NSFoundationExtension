//
//  NSObject+ModelCache.h
//  NSFoundationExtension
//
//  Created by gus on 2018/5/19.
//

#import <Foundation/Foundation.h>

//NSObject的缓存，要求NSObject支持NSCoding
@interface NSObject (ModelCache)

/**
 将当前对象，保存到缓存中
 @parameter model  保存到缓存中的model
 */
+ (void)saveToCache:(NSObject<NSCopying> *)model;

/**
 从缓存中读取出独享model
 */
+ (NSObject *)modelFromCache;


@end
