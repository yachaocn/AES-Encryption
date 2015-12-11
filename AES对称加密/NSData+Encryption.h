//
//  NSData+Encryption.h
//  AES对称加密
//
//  Created by yachaocn on 15/12/10.
//  Copyright © 2015年 NavchinaMacBook. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Encryption)
- (NSData *)AES256ParmEncryptWithKey:(NSString *)key;   //加密
- (NSData *)AES256ParmDecryptWithKey:(NSString *)key;   //解密 
@end
