//
//  ViewController.m
//  YYModelTest
//
//  Created by Plum on 2017/7/28.
//  Copyright © 2017年 Plum. All rights reserved.
//

#import "ViewController.h"
#import "Plum.h"
#import "YYModel.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *string = @"{\"n\":\"Harry Pottery\",\"p\": 256,\"ext\" : {\"desc\" : \"A book written by J.K.Rowling.\", \"pl\":\"plum\"},\"ID\" : 100010}";
    NSString *string = @"{\"libo\": \"libo\", \"plum1\": \"plum1\"}";
    Plum *p = [Plum yy_modelWithJSON:string];
    
//    NSLog(@"");
//    NSNull *null =[NSNull null];
//    if (null == (id)kCFNull) {
//        NSLog(@"");
//    }
//    [p instance];
//    [Plum testClass];
//    Class cls = p.class;
//    unsigned int count = 0;
//    
//    objc_property_t *ptr = class_copyPropertyList(cls, &count);
//    for (int i = 0; i < count; i++) {
//        objc_property_t t = ptr[i];
//        const char *name = property_getName(t);
//        NSLog(@"proterty = %s \n", name);
//    }
//    
//    Ivar *iva = class_copyIvarList(cls, &count);
//    for (int i = 0; i < count; i++) {
//        Ivar t = iva[i];
//        const char *name = ivar_getName(t);
//        NSLog(@"ivar = %s \n", name);
//    }
    Class cls = [Plum class];
    BOOL isMe = class_isMetaClass(cls);
    cls = object_getClass(cls);
    isMe = class_isMetaClass(cls);
    BOOL is = [cls respondsToSelector:@selector(testClass)];
    if (is) {
        [(id<PlumPro>)cls testClass];
    }
    
    NSString *l = Plum.libo;
    
    NSCharacterSet *set;
    NSRange range;
    range.location = (unsigned int)'a';
    range.length = 26;
    set = [NSCharacterSet characterSetWithRange:range];
    NSLog(@"set = %@",set);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
