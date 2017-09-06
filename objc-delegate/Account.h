//
//  Account.h
//  objc-delegate
//
//  Created by Kentaro on 2017/08/21.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FavoriteProgrammingLanguage;

/**
 アカウントクラス
 */
@interface Account : NSObject
/**
 好きな言語
 */
@property (nonatomic, strong) FavoriteProgrammingLanguage *language;
/**
 自己紹介する
 */
- (void)introduce;
- (instancetype)init;
- (instancetype)initWithName: (NSString *)name
                         age: (NSInteger)age
                      gender: (NSString *)gender
            favoriteLanguage: (NSString *)favoriteLanguage;
- (void)setLanguage:(FavoriteProgrammingLanguage *)language;
@end
