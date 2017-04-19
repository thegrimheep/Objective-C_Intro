//
//  Employee.h
//  Objective-C_Intro
//
//  Created by David Porter on 4/18/17.
//  Copyright © 2017 David Porter. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying, NSCoding>

@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *managerName;
@property (strong, nonatomic) NSNumber *yearsEmployed;
@property (strong, nonatomic) NSNumber *employeeNumber;

-(instancetype)initWithFirstName: (NSString *) firstName
                        lastName: (NSString *) lastName
                             age: (NSNumber *) age
                           email: (NSString *) email
                   yearsEmployed: (NSNumber *) yearsEmployed
                      andManager: (NSString *) managerName;

@end

