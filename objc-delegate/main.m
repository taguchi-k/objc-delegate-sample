//
//  main.m
//  objc-delegate
//
//  Created by Kentaro on 2017/08/21.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "FavoriteProgrammingLanguage.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        FavoriteProgrammingLanguage *language = [[FavoriteProgrammingLanguage alloc] init];
        Account *account = [[Account alloc] initWithName:@"Taguchi"
                                                     age:32
                                                  gender:@"男性"
                                        favoriteLanguage:@"Swift"];
        account.language = language;

        [language joinIntern];
    }
    return 0;
}
