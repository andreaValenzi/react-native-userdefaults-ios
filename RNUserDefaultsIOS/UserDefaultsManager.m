//
//  StandardUserDefaultsManager.m
//  RNStandardUserDefaultsIOS
//
//  Created by Dave Sibiski on 5/15/15.
//  Copyright (c) 2015 Dave Sibiski. All rights reserved.
//

#import "UserDefaultsManager.h"

@interface UserDefaultsManager()

+ (NSUserDefaults *)container;

@end

@implementation UserDefaultsManager

+ (NSUserDefaults *)container {
    static NSUserDefaults *fooContainer = nil;
    if (fooContainer == nil) {
        fooContainer = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.rebrandly"];
    }
    return fooContainer;
}

+ (void)setObject:(id)object forKey:(NSString *)key {
    
    [[UserDefaultsManager container] setObject:object forKey:key];
}

+ (void)setBool:(bool)value forKey:(NSString *)key {
    
    [[UserDefaultsManager container] setBool:value forKey:key];
}

+ (void)removeObjectForKey:(NSString *)key {
    
    [[UserDefaultsManager container] removeObjectForKey:key];
}

+ (NSArray *)arrayForKey:(NSString *)key {
    
    return [[UserDefaultsManager container] arrayForKey:key];
}

+ (NSString *)stringForKey:(NSString *)key {
    
    return [[UserDefaultsManager container] stringForKey:key];
}

+ (id)objectForKey:(NSString *)key {
    
    return [[UserDefaultsManager container] objectForKey:key];
}

+ (bool)boolForKey:(NSString *)key {
    
    return [[UserDefaultsManager container] boolForKey:key];
}

@end
