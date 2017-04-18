//
//  Person.m
//  Objective-C_Intro
//
//  Created by David Porter on 4/17/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithFirstName: (NSString *) firstName
                        lastname: (NSString *) lastName
                          andAge: (NSNumber *) age {
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}



-(void)walk {
    NSString *name = [self firstName];
    NSLog(@"%@I am walking...", name); //%@ is a place holder inside of a string.
}

+(void)sayHello {
    NSLog(@"Hello!");
}

-(id)copyWithZone:(NSZone *)zone {
    Person *person = [[[self class] alloc] init];
    
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}

@end
