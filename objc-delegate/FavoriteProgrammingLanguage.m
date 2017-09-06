//
//  FavoriteProgrammingLanguage.m
//  objc-delegate
//
//  Created by Kentaro on 2017/08/21.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

#import "FavoriteProgrammingLanguage.h"

@implementation FavoriteProgrammingLanguage

- (void)joinIntern
{
    if ([self.delegate respondsToSelector:@selector(canObjectiveC)]) {
        [self.delegate canObjectiveC];
    }
}

@end
