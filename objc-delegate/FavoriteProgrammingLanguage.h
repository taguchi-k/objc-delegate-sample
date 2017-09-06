//
//  FavoriteProgrammingLanguage.h
//  objc-delegate
//
//  Created by Kentaro on 2017/08/21.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 FavoriteProgrammingLanguageDelegateプロトコル
 */
@protocol FavoriteProgrammingLanguageDelegate <NSObject>
@optional
/**
 Objective-Cができる
 */
- (void)canObjectiveC;
@end

/**
 好きなプログラミング言語クラス
 */
@interface FavoriteProgrammingLanguage : NSObject
/**
 delegateオブジェクト
 */
@property (weak, nonatomic) id<FavoriteProgrammingLanguageDelegate> delegate;
/**
 インターンに参加する
 */
- (void)joinIntern;
@end
