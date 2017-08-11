//
//  Plum.m
//  YYModelTest
//
//  Created by Plum on 2017/7/28.
//  Copyright © 2017年 Plum. All rights reserved.
//

#import "Plum.h"
#import "Libo.h"
#import "Plum1.h"
#import <NSObject+YYModel.h>

static NSString *_libo = nil;

@implementation Plum



+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"name"  : @"n",
             @"page"  : @"p",
             @"desc"  : @"ext.desc",
             @"bookID" : @[@"id",@"ID",@"book_id"]};
}
//
//+ (NSArray *)modelPropertyWhitelist {
//    return @[@"name", @"page", @"desc", @"libo"];
//}

- (void)instance {
    NSLog(@"instance%@", [self class]);//这个class是NSObject协议的方法
}

+ (void)testClass {
    NSLog(@"testClass%@", [self class]);//这个是NSObject类的方法
}
/*
+ (nullable Class)modelCustomClassForDictionary:(NSDictionary *)dictionary {
    NSLog(@"");
    if (dictionary[@"libo"]) {
        return [Libo class];
    } else {
        return [Plum1 class];
    }
    return nil;
}



+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass {
    return @{@"libos": [Libo class]};
}
*/

+ (void)setLibo:(NSString *)libo {
    if (![_libo isEqualToString:libo]) {
        _libo = libo;
    }
}

+ (NSString *)libo {
    if (!_libo) {
        _libo = @"libo";
    }
    return _libo;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self yy_modelEncodeWithCoder: aCoder];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    return [self yy_modelInitWithCoder:aDecoder];
}


@end
