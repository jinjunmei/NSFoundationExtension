//
//  NSObject+ModelCacheTestCase.m
//  DemoFoundationExtTests
//
//  Created by gus on 2018/5/19.
//  Copyright © 2018年 顾吉涛. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <NSObject+ModelCache.h>

@interface NSObject_ModelCacheTestCase : XCTestCase

@end

@implementation NSObject_ModelCacheTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testObjectCacheModel {
    NSString *sample = @"Test ObjectModel";
    [NSString saveToCache:sample];
    NSString *cache = (NSString *)[NSString modelFromCache];
    XCTAssert([sample isEqualToString:cache]);
}
@end
