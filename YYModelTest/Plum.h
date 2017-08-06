//
//  Plum.h
//  YYModelTest
//
//  Created by Plum on 2017/7/28.
//  Copyright © 2017年 Plum. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Libo;

@protocol PlumPro <NSObject>

+ (void)testClass;

@end


@interface Plum : NSObject 
@property NSString *name;
@property NSInteger page;
@property (nonatomic, strong) NSArray<Libo *> *libos;

@property (class, strong) NSString *libo;
//@property NSString *desc;
//@property NSString *libo;
//@property NSString *bookID;



//- (void)instance;
//+ (void)testClass;

@end
