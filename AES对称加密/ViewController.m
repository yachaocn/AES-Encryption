//
//  ViewController.m
//  AES对称加密
//
//  Created by yachaocn on 15/12/10.
//  Copyright © 2015年 NavchinaMacBook. All rights reserved.
//

#import "ViewController.h"
#import "NSData+Encryption.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str = @"你好";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
//    加密
    NSString *key = @"535541213";
    NSData *encryptionData = [data AES256ParmEncryptWithKey:key];
    NSLog(@"%@加密后数据：%@",data,encryptionData);
    
//解密
   NSData *deData = [encryptionData AES256ParmDecryptWithKey:key];
    NSString *deStr = [[NSString alloc]initWithData:deData encoding:NSUTF8StringEncoding];
    NSLog(@"解密后数据：%@",deStr);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
