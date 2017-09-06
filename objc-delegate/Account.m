//
//  Account.m
//  objc-delegate
//
//  Created by Kentaro on 2017/08/21.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

#import "Account.h"
#import "FavoriteProgrammingLanguage.h"

@interface Account () <FavoriteProgrammingLanguageDelegate>
/**
 氏名
 */
@property (nonatomic, copy) NSString *name;
/**
 年齢
 */
@property (nonatomic) NSInteger age;
/**
 性別
 */
@property (nonatomic, copy) NSString *gender;
/**
 得意な言語（NSStringのプロパティ）
 */
@property (nonatomic, copy) NSString *favoriteLanguage;
@end

@implementation Account

- (instancetype)init
{
    return [self initWithName:@"name"
                          age:20
                       gender:@"男性"
             favoriteLanguage:@"Swift"];
}

- (instancetype)initWithName: (NSString *)name
                         age: (NSInteger)age
                      gender: (NSString *)gender
            favoriteLanguage: (NSString *)favoriteLanguage
{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
        self.gender = gender;
        self.favoriteLanguage = favoriteLanguage;
    }
    return self;
}

// MARK: - Setter

- (void)setLanguage:(FavoriteProgrammingLanguage *)language
{
    _language = language;
    _language.delegate = self;
}

// MARK: - Method

- (void)introduce
{
    if ([self.gender isEqualToString:@"男性"]) {
        NSLog(@"%@君は、%@が得意な%zd歳です。", self.name, self.favoriteLanguage, self.age);
    } else if ([self.gender isEqualToString:@"女性"]) {
        NSLog(@"%@さんは、%@が得意な%zd歳です。", self.name, self.favoriteLanguage, self.age);
    } else {
        NSLog(@"性別に男性・女性以外が設定されています。");
    }
}

// MARK: - FavoriteProgrammingLanguageDelegate

- (void)canObjectiveC
{
    NSLog(@"%@はObjective-Cができます。", self.name);
}

@end
