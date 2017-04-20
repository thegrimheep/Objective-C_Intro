//
//  Person.h
//  Objective-C_Intro
//
//  Created by David Porter on 4/17/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property(strong, nonatomic) NSString *firstName;  //declaration and declaration properties (stong nonatomic)
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSNumber *age;


-(instancetype)initWithFirstName: (NSString *) firstName
                        lastname: (NSString *) lastName
                          andAge: (NSNumber *) age;


@end




