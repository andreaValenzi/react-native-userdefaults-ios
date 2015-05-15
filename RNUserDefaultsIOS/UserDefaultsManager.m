//
//  StandardUserDefaultsManager.m
//  RNStandardUserDefaultsIOS
//
//  Created by Dave Sibiski on 5/15/15.
//  Copyright (c) 2015 Dave Sibiski. All rights reserved.
//

#import "UserDefaultsManager.h"

@implementation UserDefaultsManager

+ (NSString *)stringForKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}

@end
